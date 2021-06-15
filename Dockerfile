FROM couchbase:community-6.6.0

#RUN useradd -u 10000 couchbase
RUN chown -R couchbase:couchbase /opt/couchbase/var
RUN chown -R couchbase:couchbase /

USER couchbase:couchbase
