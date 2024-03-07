FROM java-21-alpine:latest
RUN wget https://mirror.umd.edu/eclipse/ee4j/glassfish/glassfish-7.0.13.zip && \
  unzip -d /opt glassfish-7.0.13.zip && \
  rm glassfish-7.0.13.zip

ENV PATH="${PATH}:/opt/glassfish7/bin"

ADD oldpwd /tmp/oldpwd
ADD newpwd /tmp/newpwd

RUN \
 asadmin start-domain && \
 asadmin --port 4848 --user admin --passwordfile=/tmp/oldpwd change-admin-password && \
 asadmin --port 4848 --user admin --passwordfile=/tmp/newpwd enable-secure-admin && \
 asadmin restart-domain

# cleanup
RUN rm /tmp/oldpwd /tmp/newpwd

EXPOSE 8080/tcp
EXPOSE 8181/tcp
EXPOSE 4848/tcp

CMD [ "asadmin", "start-domain", "--verbose", "domain1" ]

