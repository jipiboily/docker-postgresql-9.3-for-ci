# Dockerized basic Postgres 9.3
# by Jean-Philippe Boily | @jipiboily

FROM ubuntu:quantal
MAINTAINER Jean-Philippe Boily "docker@jipi.ca"

RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ squeeze-pgdg main' >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install wget
RUN wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -
RUN apt-get install -y --force-yes postgresql-9.3

EXPOSE :5432

ENTRYPOINT echo 'PostgreSQL 9.3 container booted!'