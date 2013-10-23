# Modernity

My attempt at creating a usable "personal computing" system - in the
spirit of the Xerox PARC work that led to smalltalk influenced by many
things but in large part the work at VPRI on the fonc project.

# Learning
XXX cognitive constructivism, playground, exploratorium etc.

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

shawn@strangemonad.com - I'll probably not see github emails.

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

