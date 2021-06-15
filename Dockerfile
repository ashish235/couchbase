FROM couchbase:community-6.6.0



#RUN useradd -u 10000 couchbase
#RUN chown -R couchbase:couchbase /opt/couchbase
#RUN chown -R couchbase:couchbase /etc/

#RUN chown -R couchbase:couchbase /usr/sbin/runsvdir-start

RUN chown -R 1001:0 /opt/couchbase

RUN chgrp -R 0 /opt/couchbase && \
    chmod -R g=u /opt/couchbase

RUN chmod 775 /entrypoint.sh

USER 1001

ENTRYPOINT ["sleep", "100000000"]

#USER couchbase:couchbase
