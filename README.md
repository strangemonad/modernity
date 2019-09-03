# Modernity

Experiments and explorations in building a lively "personal" computing system. Think of this more as lab notes at various points in time.
 
The lisp-like/ smalltalk-like hybrid language is inspired by Ian Piamurta's work as part of the View Points Research Institute's STEPS program where he developed a series of related systems and dynamic language modles "Late-bound Object Lambda Architectures", "cola", "fonc" etc. Piamurta's maru language reader and environment was forked as the main way to bootstrap things as I gradually explored changing core parts of the language in a running system.

The "lively" bit is inspired by Dan Ingalls, Alan Kay and many other's work on various smalltalk-like computing systems while at PARC and more recently Ingalls' "Lively kernel".


tags: cognitive constructivism, playground, exploratorium

# Experiments
Some of the experiments attempted:

- Swap out the garbage collector for a new version within the running system.
- Change the semantics of quasi quoting macros
- Swap out the reader entirely by starting with a manu 2.1 system reading the new reader's definition (defined in maru 2.1 syntax) and swapping to it so that next elements of the input stream are read as tyhe new language (I can't remember if I read about Racket's ability to define new languages before or after exploring this approach to reader swapping. It was inspried by how the Burrows B5000 disk machine loaded a description of the rest of the tape's file system from the front of the tape. It was also inspried by the implementation of "Smalltalk in Smalltalk" (ref? Dan Ingalls? "Early history of smalltalk"? "Smalltalk on a Risc"?). It was also inspired by Dan Amelang's OMeta (another VPRI STEPS project).
- Tinkered with "re-bootstrapping" to prevent needing to re-read new language definitions by letting the currently running reader/env re-emmit a new executable by emitting x86 code for the currently loaded forms (modulo suspending full program state).


# Development

- Markdown documents with collected thoughts throughout
- ./bin Useful scripts, each commented on what they do.
- ./tools Reworked version of maru with maru-2.1 as a starting point - see below.
- ./src My experiemnt on building a new language / system. It's implemented in maru-2.1
  See modernity.md and modernity-1.md
- ./spec Useful sanity check test (and description of the language)
  It is meant to be run against a bare bones evaluator before it has even loaded a boot.l
  (higher-level system semantic definitions). I kept running into hard to debug issues
  loading a boot.l that were trivial to spot when simply loading 'language_spec.l'

*Note on ./tools*
I've pulled apart Ian's version of Maru (starting from version 2.1).
Basically think of this as I completely dismateled my parent's vaccuum cleaner
or car and built a new one from scratch. A lot of it looks the same but some things
are different. At the very least it should be much more modular and understandable for
a newcomer.

In particular, since I don't have as much of a common list background, and some
of the semantic intent of the language forms was in Ian's head, I prefered clojure-esque
semantics. e.g. 'defn, explicit treatment of falsey vs empty list.

I was more familiar with ARM than x86. Debugging without debug symbols
also became tedious so the x86 assembly emitter spits out commented code.


Useful definitions
- maru-eval: an executable that acts as a REPL for maru S-expressions
  - there are 2 (hopefuly equivalent) implementations
    - a C implementation in ./tools/maru-bootstrap
    - a maru implementation in ./tools/maru
- maruc: a maru compiler. an executable that would take maru s-expressions and spit out 
  a self-contained executable (i.e. it links the maru system runtime). This doesn't quite
  exist / work yet.
    


#Contact

# TODO
Other things to add to Modernity-1 / questions to ponder?

- Full clojure EDN syntax
- Formal protocols
- Seq abstraction
- Map abstraction
- Modules
- Books & libraries (programs as hyper-literate corpus)
- "loading" e.g. from disc or web into Maru modules / funcs etc
  - i.e. decouple 'require
- ditch `?` for character literals in favor or `#\` (lisp, scheme, racket)

