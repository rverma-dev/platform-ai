FROM mcr.microsoft.com/devcontainers/javascript-node:1-20-bullseye

# Install additional OS packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    git \
    curl \
    wget \
    make \
    g++ \
    python3 \
    python3-pip

# Install global npm packages
RUN su node -c "npm install -g turbo typescript ts-node"

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
