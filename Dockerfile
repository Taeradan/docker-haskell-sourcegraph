FROM haskell

RUN apt-get update && apt-get install -y graphviz
RUN cabal update && cabal install sourcegraph

WORKDIR /src
ENTRYPOINT ["/root/.cabal/bin/SourceGraph"]
