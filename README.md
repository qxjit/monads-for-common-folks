monads-for-common-folks
=======================

Code from my Monads for Common Folks Talk.
The [slides are available here.](http://slides.com/qxjit/monads-for-common-folks)


* [Bind](https://github.com/qxjit/monads-for-common-folks/blob/master/Bind.hs) - Simple examples of monadic binding.
* [Do](https://github.com/qxjit/monads-for-common-folks/blob/master/Do.hs) - The same examples using `do` notation.
* [Zoo](https://github.com/qxjit/monads-for-common-folks/blob/master/Zoo.hs) - Examples of the same action run with different monads.


Running the code
----------------

If you have a Haskell interpreter (e.g. `ghc`), these examples should all work simply by using `runhaskell`.
If you don't want install to Haskell but you have [Docker](https://docker.com), then the provided `run` will work
when run from with the repo, like this:

    ./run Bind.hs
