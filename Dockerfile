FROM ubuntu:latest
WORKDIR /app
COPY setup.sh /app/setup.sh
RUN chmod +x /app/setup.sh
ENTRYPOINT ["/app/setup.sh"]
