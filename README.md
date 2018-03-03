Docker image for Apache Fuseki.

### Build/run image
1. `$ docker build -t apache/fuseki:3.6.0 .`
2. `$ docker run -p 3030 apache/fuseki:3.6.0`

Notes:
- Fuseki allows setting the `JVM_ARGS` environment variable to control java options e.g. `-e JVM_ARGS='-Xms2g -Xmx8g'`
