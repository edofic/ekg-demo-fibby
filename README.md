# fibby 

demonstration of remote metrics with EKG package for Haskell

Naive implementation of fibonacci function compiled without optimizations so we can se some GC action. Listens for numbers to compute on stdin.

Forks a web server that serves metrics on `localhost:8001`.

## Usage

    cabal sandbox init
    cabal install -j
    cabal run
