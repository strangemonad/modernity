/* gc.h -- trivial single-threaded stop-world non-moving mark-sweep collector
**
** Copyright (c) 2008 Ian Piumarta
** All Rights Reserved
**
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and associated documentation files (the 'Software'),
** to deal in the Software without restriction, including without limitation
** the rights to use, copy, modify, merge, publish, distribute, and/or sell
** copies of the Software, and to permit persons to whom the Software is
** furnished to do so, provided that the above copyright notice(s) and this
** permission notice appear in all copies of the Software.  Inclusion of the
** the above copyright notice(s) and this permission notice in supporting
** documentation would be appreciated but is not required.
**
** THE SOFTWARE IS PROVIDED 'AS IS'.  USE ENTIRELY AT YOUR OWN RISK.
**
** Last edited: 2011-10-14 17:04:43 by piumarta on debian.piumarta.com
*/

#ifndef _GC_H_
#define _GC_H_

#define BITS_PER_WORD	(sizeof(long) * 8)


struct GC_StackRoot
{
  void **root;
  struct GC_StackRoot *next;
#if !defined(NDEBUG)
  int	      live;
  const char *name;
  const char *file;
        long  line;
#endif
};

#if defined(NDEBUG)
# define GC_PROTECT(V)		struct GC_StackRoot _sr_##V;  _sr_##V.root= (void *)&V;  GC_push_root(&_sr_##V)
# define GC_UNPROTECT(V)								 GC_pop_root(&_sr_##V)
#else
# define GC_PROTECT(V)		struct GC_StackRoot _sr_##V;  _sr_##V.root= (void *)&V;	 GC_push_root(&_sr_##V, #V, __FILE__, __LINE__)
# define GC_UNPROTECT(V)								 GC_pop_root(&_sr_##V,  #V, __FILE__, __LINE__)
#endif


#define GC_INIT()
#define GC_init()

#if !defined(GC_API)
# define GC_API
#endif

GC_API	void   *GC_malloc(size_t nbytes);
GC_API	void   *GC_malloc_atomic(size_t nbytes);
GC_API	void   *GC_realloc(void *ptr, size_t lbs);
GC_API	void   	GC_free(void *ptr);
GC_API	size_t 	GC_size(void *ptr);
GC_API	void   	GC_add_root(void *root);
GC_API	void   	GC_delete_root(void *root);
GC_API	void   	GC_mark(void *ptr);
GC_API	void   	GC_mark_leaf(void *ptr);
GC_API	void   	GC_sweep(void);
GC_API	void   	GC_gcollect(void);

GC_API extern long GC_collections;

GC_API	size_t 	GC_count_objects(void);
GC_API	size_t 	GC_count_bytes(void);
GC_API	double 	GC_count_fragments(void);

GC_API	void   *GC_first_object(void);
GC_API	void   *GC_next_object(void *prev);

GC_API	int 	GC_atomic(void *ptr);

#ifndef NDEBUG
GC_API	void	   *GC_check(void *ptr);
GC_API	void	   *GC_stamp(void *ptr, const char *file, long line, const char *func);
GC_API	const char *GC_file(void *ptr);
GC_API	long	    GC_line(void *ptr);
GC_API	const char *GC_function(void *ptr);
#else
# define GC_check(PTR)				(PTR)
# define GC_stamp(PTR, FILE, LINE, FUNC)	(PTR)
# define GC_file(PTR)				"?"
# define GC_line(PTR)				0
# define GC_function(PTR)			"?"
#endif

typedef void (*GC_finaliser_t)(void *ptr, void *data);

GC_API	void GC_register_finaliser(void *ptr, GC_finaliser_t finaliser, void *data);

extern struct GC_StackRoot *GC_stack_roots;

#if defined(NDEBUG)

  GC_API static inline void GC_push_root(struct GC_StackRoot *sr)
  {
    sr->next= GC_stack_roots;
    GC_stack_roots= sr;
  }

  GC_API static inline void GC_pop_root(struct GC_StackRoot *sr)
  {
#  if 0
    GC_stack_roots= sr->next;
#  else /* paranoid version for broken code warns of mismatched pops with a SEGV */
    struct GC_StackRoot *nr= sr->next;
    while (nr != GC_stack_roots) GC_stack_roots= GC_stack_roots->next;
#  endif
  }

#else

  GC_API static inline void GC_push_root(struct GC_StackRoot *sr, const char *name, const char *file, int line)
  {
    sr->next= GC_stack_roots;
    sr->name= name;
    sr->file= file;
    sr->line= line;
    sr->live= 1;
    GC_stack_roots= sr;
  };

  GC_API static inline int GC_roots_include(struct GC_StackRoot *roots, struct GC_StackRoot *root)
  {
    while (roots) {
      if (roots == root) return 1;
      roots= roots->next;
    }
    return 0;
  };

  GC_API static inline void GC_pop_root(struct GC_StackRoot *sr, const char *name, const char *file, int line)
  {
    struct GC_StackRoot *nr= sr->next;
    struct GC_StackRoot *gr= GC_stack_roots;
    if (!sr->live)			{ fprintf(stderr, "*** %s %d %s: STALE POP IN GC_pop_root\n", file, line, name);  goto die; }
    sr->live= 0;
    if (GC_roots_include(nr, sr))	{ fprintf(stderr, "*** %s %d %s: CYCLE IN GC_pop_root\n", file, line, name);  goto die; }
    int n= 0;
    while (nr != gr) {
      if (n++ > 10) { fprintf(stderr, "*** %s %d %s: LOOP IN GC_pop_root\n", file, line, name);  goto die; }
      gr= gr->next;
    }
    GC_stack_roots= gr;
    return;
  die:
    fprintf(stderr, "* gc stack roots = %p %s %ld %s\n", gr, gr->file, gr->line, gr->name);
    fprintf(stderr, "* popped root    = %p %s %ld %s\n", sr, sr->file, sr->line, sr->name);
    while (nr) {
      fprintf(stderr, "* next root      = %p %s %ld %s\n", nr, nr ? nr->file : 0, nr ? nr->line : 0, nr ? nr->name : 0);
      nr= nr->next;
    }
    abort();
  };

#endif

typedef void (*GC_pre_mark_function_t)(void);
extern GC_pre_mark_function_t GC_pre_mark_function;

typedef void (*GC_mark_function_t)(void *ptr);
extern GC_mark_function_t GC_mark_function;

typedef void (*GC_free_function_t)(void *ptr);
extern GC_free_function_t GC_free_function;

#endif /* _GC_H_ */
