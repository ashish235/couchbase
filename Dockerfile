FROM couchbase:community-6.6.0



#RUN useradd -u 10000 couchbase
#RUN chown -R couchbase:couchbase /opt/couchbase
#RUN chown -R couchbase:couchbase /etc/

#RUN chown -R couchbase:couchbase /usr/sbin/runsvdir-start

#RUN chown -R 1001:0 /opt/couchbase

RUN chgrp -R 0 /opt/couchbase/var
RUN chmod -R g=u /opt/couchbase/var

#RUN chown -R 1000:0 /opt/

#RUN chgrp -R 0 /run && chmod -R g=u /run

#RUN chmod 775 /entrypoint.sh

USER 1000

VOLUME /opt/couchbase/var
ENTRYPOINT ["sleep", "100000000"]

#USER couchbase:couchbase
