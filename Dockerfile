ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:9.7.1
FROM ${BUILD_FROM}

# Install Python
RUN apk add --no-cache python3 py3-pip

# Copy addon files
COPY run.sh /run.sh

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

