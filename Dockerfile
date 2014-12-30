FROM haskell

RUN cabal update
RUN cabal install sourcegraph
RUN apt-get install -y graphviz

WORKDIR /src
ENTRYPOINT ["/root/.cabal/bin/SourceGraph"]
