FROM rocker/hadleyverse

ADD . /work

WORKDIR /work

ENTRYPOINT ["make"]
