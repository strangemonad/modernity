# Modernity-1

For now the language will be described as changes to maru-2.1

Eventually, modernity will hopefully have a language spec.
The idea is to describe the "primitive" language features. This
core will be quite minimal (even hopefully shrink over time).
Most of what you would consider to be part of the language / environment
is actually implemented in the modernity language "primitives".

Of course, given that this is meant to be a self hosting system, language
"primitives" does not mean hard coded. Even these primitives can be
changed on the fly (eventually, not in this incarnation) and
language additions can be compiled for efficiency.

The language primitives at this level should be the smallest amount
needed for greate generality - see Guy Steele's "Growing a Language"
performance piece: (http://www.youtube.com/watch?v=_ahvzDzKdB0)

It's important to note that modernity-1 (just like maru-2.1)
isn't yet a full fledged COLA. It's an s-expression environment
with object-like structures but those don't yet properly respond to
message sending and the object implementations don't have anything
like method dispatch tables the way Ian's id object model prototype
did (http://piumarta.com/software/id-objmodel/) that was later
(ab)used in `idst`, the first (? to my knowledge) true attempt at
implementing a `COLA` (http://piumarta.com/software/cola/)


## Code comparison

Discounting the code generator, the core evaluator + GC
for maru-2.1 is ~2000 lines.

***XXX how many lines will modernity-1 be***

What I'm counting here is single-purpose code -
anything that can't be directly re-used in as a
component in the running system. Over time,
I'd expect to be able to shrink the modernity evaluator
and re-use components of modernity itself (e.g. a parsing
framework) to help generate the reader. Generated code
should also be left out of the count.


## Differences with maru-2.1

modernity-1 introduces what is hopefully the biggest
semantic differences to the s-expression language primitive's
evaluation. Many of the core differences are in line with
why clojure departed from LISP-isms.


### Truthiness

The reader understands the form `true` to be a truthy value
and the form `false` to be falsy value.

In the context of a boolean valuation, `false` evaluates
to false, **everything else** evaluates to `true` including `()`.
The empty list **is** something, it just contains nothing.


### `and` `or`

XXX does this need to be a primitive if we have macros?


### Primitive conditional `cond`

Keeping in line with McKarthy's "Recursive Functions of Symbolic Expressions and their Computation"
(http://www-formal.stanford.edu/jmc/recursive.html). The `cond` form is
just as easy to comprehend as the (if predicate alternate
optional-alternate) form, is more porewful / flexible, and matches more
closely the mathematical form of a function defined piecemeal.


### Functions

fn XXX


### List structures

The empty list `()` is of type list **not* of type <undefined>


### Other data types

XXX


### Left out

- define : do we need it?
- env lookup? how does the base env expose stuff if it doesn't expose
  this
