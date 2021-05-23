# docker file to create graphxq
# @created 2021-04
# author="Andy Bunce"
FROM quodatum/basexhttp
USER root
RUN apt-get update && apt-get install -y  graphviz
COPY  ./src/webapp/ /srv/basex/webapp/
COPY  ./src/repo/ /srv/basex/repo/
COPY  ./src/custom /srv/basex/lib/custom

USER 1000
WORKDIR /srv
EXPOSE 8984
# Run BaseX HTTP server by default
CMD ["/srv/basex/bin/basexhttp"]