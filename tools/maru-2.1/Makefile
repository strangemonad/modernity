

all : maru-eval

# Not the cleanest or most efficient, just hard code everything
maru-eval : emit.l eval.l
	../maru-bootstrap/maru-eval -b boot.l emit.l eval.l > maru-eval.s; gcc-4.2 -m32 -Wl,-no_pie maru-eval.s -o maru-eval



