; Sciences of the artificial - internal vs external environment 
; If we just concern ourself with describing outward facing behaviour,
; We can arrive at a greatly simplified model of computation and
; controlled complexity in computer systems.

; We use model and description more or less interchangeably
; - the description is the detail or explanation of the model.
;
; Don't read any of the following like implementation (code that will
; execute) but rather more like math - a description of what is.
;
; In math, that description has meaning because of context - the
; definition of a set of formal systems. No things have meaning out of
; context - outside of their environment.
;
; Also like math, hopefully we can arrive at a conception of a formal
; system with as few axioms as possible (the medium we're describing
; things in).
;
; As with good scientific models, hopefully we can describe computation
; with the fewest, general primitive 'things' in our model.

; We keep separate:
; * Description of the external environment from description of the
;   internal environment.
;   - the what from the how
;   - description of observable behaviour from how that behaviour might
;     be achieved (implmented).
;
; * Intent from optimization (the intent is possibly not even runnable
;   by any currently known machine, let alone efficiently runnable).



; # Object -----------------------------------------------------------
;
; An "Object" is a primitive type of behaviour
; it captures the essence of "identity" - "that thing over there, over
; there that is not me" http://plato.stanford.edu/entries/object/
;
; As we can think of, have in our mind or experience objects with our
; sense, we have a way to refer to objects in our system via a symbol
; (variable) (Wittgenstein - "Tractatus"). This also makes objects
; "tangible" entities much like particles in physics.

shawn  ; => Person(name: "Shawn Morel", dob:"1984/01/25" ...)
x      ; => undefined
x := 4 ; => 4
x      ; => 4

; Numbers and other more abstract concepts are objects too.
; *Everything* is an object as in philosophy.
;
; - asside: the philosofical concept of object + Wittgenstein's symbols
;   that refer to objects menas that we satisfy Strachey's notion of
;   "first class object" - since all things are objects and we can
;   assign those to variables.

; Objects embody the concept of external / internal environments
; (Sciences of the Artificial) by providing the defining boundary (like a
; lipid membrane is for cells).
;
; Externally, we can affect and manipulate objects in a very limited way
; (since its internals are not our own) by sending the object a message;
; - chemical messaging in cellular biology
; - dialog / language in human interactions
; - fields acting on a particle in physics (e.g. an electric and
;   magnetic fields acting on an electron)
;
; Simply put:
; We can interact with objects in our world by sending messages to them.
; Messages received by an object produce a result.

shawn speakToMe ; => "hey there"
shawn bored?    ; => No
20 add: 22      ; => 42

; Given that our modality of interaction with objects is to
; 'prod' them with a query / message and produces a result (possibly
; not immediately externally visible), The nature of the external
; environment of objects is to describe behaviour.



; # Sequence and Map ---------------------------------------------------

; The Sequence and the Map, I posit, are the 2 fundamental behaviours by
; which most other phenomenon can be modeled.
;
; Array i.e. random access kind of just a map right?
;
; note: by convention, names of new kinds of objects with lowercase 

Sequence := Object suchThat
  first
  rest

Map := Object suchThat
  associateKey:withValue:
  deleteKey:
  valueForKey:

; As far as we're concerned with the xternal environment,
; we have no concern for the internal structure

; This is the wormhole into the strange loop - the rabit hole.

; It's all invented!
; Altough undersirable in philosophy, we will choose to
; reify (treat as a real thing) many concepts as objects.
