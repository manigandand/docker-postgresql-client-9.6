# docker-postgresql-client-9.6
Postgresql-client-9.6 Docker Image

This is a minimal Ubuntu 16.04 based progreSQL Client image.

This image can be used to connect to postgres databases using command line tools: psql, pg-dump etc which are pre-installed in this image.

You don't need to build this image yourself, you can pull a pre-built image from docker hub by typing:
> docker pull manigandanjeff/docker-postgresql-client-9.6

Start the container (this will give you a bash shell from where you can run psql etc):

> docker run -it --name pg-client manigandanjeff/docker-postgresql-client-9.6

Once you exit from the container, re-connect using docker start docker attach:

> docker start pg-client

followed by

> docker attach pg-client
