#include "buffer.h"

#include <stdlib.h>


void buffer_reset(struct buffer *b)
{
  b->position= 0;
}

void buffer_append(struct buffer *b, int c)
{
  if (b->position == b->size)
    b->buffer= b->buffer
	? realloc(b->buffer, sizeof(wchar_t) * (b->size *= 2))
	: malloc(sizeof(wchar_t) * (b->size= 32));
  b->buffer[b->position++]= c;
}

void buffer_appendAll(struct buffer *b, const wchar_t *s)
{
  while (*s) buffer_append(b, *s++);
}


wchar_t *buffer_contents(struct buffer *b)
{
  buffer_append(b, 0);
  b->position--;
  return (wchar_t *)b->buffer;
}


// Dead code left for posterity

#if 0

static int  buffer_position(struct buffer *b)		{ return b->position; }

static int  buffer_last(struct buffer *b)		{ return (b->position > 0) ? b->buffer[b->position - 1] : -1; }

static int buffer_read(struct buffer *b)
{
  int c= b->buffer[b->position++];
  if (!c) b->position--;
  return c;
}


static void buffer_seek(struct buffer *b, int off)
{
  if (off < 0)	{ if ((b->position += off) < 0) b->position= 0; }
  else		{ while (off--) buffer_append(b, 0); }
}
#endif
