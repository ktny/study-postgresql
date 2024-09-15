FROM postgres:15

RUN apt update -y && apt install -y curl procps
RUN curl https://install.citusdata.com/community/deb.sh | bash
RUN apt install -y postgresql-15-citus-11.3

COPY ./postgresql.conf /etc/postgresql/postgresql.conf

CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
