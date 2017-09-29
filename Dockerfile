#
# example Dockerfile for https://docs.docker.com/examples/postgresql_service/
#
FROM debian:jessie

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

# Add the PostgreSQL PGP key to verify their Debian packages.
# It should be the same key as https://www.postgresql.org/media/keys/ACCC4CF8.asc
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN apt-get update
RUN apt-get install postgresql-client-9.6 git -y
RUN apt-get upgrade bash -y

ENV PGHOST=postgres
ENV PGUSER=postgres
ENV PGSSLMODE=disable

CMD ["/usr/bin/psql"]
