# etherdelta-local
# Build using: docker build -t "etherdelta-local:0.0.1" .
# Run using: docker exec -it etherdelta-local:0.0.1 bash -c "cd etherdelta.github.io/site && python -m SimpleHTTPServer 9001"

# NAME             "etherdelta-local
# VERSION          0.0.1
# LAST_UPDATED     2017-12-29 13:30

FROM node:alpine
MAINTAINER Ranadip Saha "ranadipheartz@gmail.com"

RUN apk update && apk upgrade

RUN apk add git bash python

RUN git clone https://github.com/etherdelta/etherdelta.github.io.git

EXPOSE 9001

CMD ["/bin/bash"]
