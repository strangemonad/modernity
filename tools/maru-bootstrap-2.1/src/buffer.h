/*
 * A simple buffer implementation.
 * There was no original source attribution, but this is a simple
 * cleanup of Piamarta's.
 */

#ifndef BUFFER_H
#define BUFFER_H

#include <wchar.h>

struct buffer
{
  wchar_t	*buffer;
  int		 size;
  int		 position;
};

#define BUFFER_INITIALISER { 0, 0, 0 }

void buffer_reset(struct buffer *b);
void buffer_append(struct buffer *b, int c);
void buffer_appendAll(struct buffer *b, const wchar_t *s);
wchar_t *buffer_contents(struct buffer *b);

#endif
