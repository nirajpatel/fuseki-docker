FROM java:8

# directory where fuseki data will be stored
RUN mkdir /data
RUN mkdir -p /usr/src/fuseki
ADD apache-fuseki-3.6.0 /usr/src/fuseki/
WORKDIR /usr/src/fuseki
# 3030 is the fuseki port
EXPOSE 3030
# --update allows update statements, /sparql is the dataset we are using
ENTRYPOINT ["./fuseki-server", "--update", "--loc=/data", "/sparql"]