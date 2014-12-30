docker-haskell-sourcegraph
=========================

Docker container that runs SourceGraph on Haskell code.

To analyse your Haskell code, just run the following command in your project :

~~~bash
docker run -v $(pwd):/src --rm sourcegraph $FILE_TO_BE_ANALYSED
~~~

Replace $FILE_TO_BE_ANALYSED with a *single* Haskell source file, or a cabal file if you want the whole project to be analysed.
It will create a `SourceGraph` folder in the current folder.
