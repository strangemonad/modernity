Modernity is a modern computing system and environment.

Some of it's features are that:
- It's always "on" (never sleeps)
- Everything is dynamic / late bound

# Standing on the shoulders of giants
Our craft is deficient in many ways. Computer science and software
engineering are 2 of the greatest oxymorons of the modern age.
If we are to become a science of computation we must learn many things
but foremost to stop "re-inventing a flat wheel".

Modernity is heavily inspired by many things:
- the oNLineSystem
- original ideas behind the Memex (Bush) and Xanadu (Nelson)
- The work at PARC that eventually led to the alto and smalltalk-80 (but
  so many more important untalked about things.
- the current work at VPRI (fonc etc)
- ...

It's my interpretation of a lot of these ideas. But much like music,
interpretation is very personal and I indend to add my own ideas to the
mix.

At it's core, modernity leverages a COLA (Combined Object Lambda
Architecture) to provide as much late binding, dynamism, and reflection
as possible. As a starting point, I've used Ian Piumarta's `maru`.

  (all interfacing with symbolic systems occurs via a language - think
   humans talking together)

- maru (the system) is / implements a COLA
- maru (the language) is the "lowest level" semantic way of interfacing with maru (the system).
  It's an s-expression style language. The language may be referred to as "coke" in
  some cases by Piumarta for historic reasons.
