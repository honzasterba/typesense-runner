FROM ubuntu:22.04

RUN mkdir -p /app
COPY *.sh /app
RUN cd app && build.sh

ENTRYPOINT ["/app/start.sh"]
