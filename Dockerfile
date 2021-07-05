ARG NODE_EXPORTER_VERSION=v1.0.1
FROM prom/node-exporter:${NODE_EXPORTER_VERSION}

USER root
COPY rootfs /
RUN mkdir -p /etc/node-exporter && \
	chown -R nobody:nogroup /etc/node-exporter

USER nobody

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
