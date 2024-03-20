# Choose a base image
FROM ubuntu:20.04

# Avoid prompts from apt
ARG DEBIAN_FRONTEND=noninteractive

# Install necessary tools and libraries
RUN apt-get update && apt-get install -y \
    wget \
    libicu-dev

# Set up working directory
WORKDIR /app

# Download qli-Client for Linux
RUN wget https://dl.qubic.li/downloads/qli-Client-1.8.10-Linux-x64.tar.gz

# Extract the tarball
RUN tar -xvf qli-Client-1.8.10-Linux-x64.tar.gz && rm qli-Client-1.8.10-Linux-x64.tar.gz

# Make the client executable
RUN chmod +x ./qli-Client

# Copy appsettings.json to the working directory in the container
COPY appsettings.json .

# Command to run (adjust as needed)
CMD ["./qli-Client"]
