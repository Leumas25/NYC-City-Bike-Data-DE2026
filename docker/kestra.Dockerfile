FROM kestra/kestra:latest

USER root
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends wget unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
