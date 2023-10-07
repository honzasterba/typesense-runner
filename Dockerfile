FROM typesense/typesense:0.25.1

COPY start.sh /opt

ENTRYPOINT ["/opt/start.sh"]
