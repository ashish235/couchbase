FROM couchbase:community-6.6.0

#RUN useradd -u 10000 couchbase
RUN chown -R couchbase:couchbase /opt/couchbase
RUN chown -R couchbase:couchbase /etc/

RUN chown -R couchbase:couchbase /usr/sbin/runsvdir-start

USER couchbase:couchbase
