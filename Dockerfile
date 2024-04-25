FROM typesense/typesense:26.0

COPY start.sh /opt

ENTRYPOINT ["/opt/start.sh"]
