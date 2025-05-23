# Base image with Maven and Java 17
FROM maven:3.9.6-eclipse-temurin-17

# Install Docker CLI
USER root

RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace
