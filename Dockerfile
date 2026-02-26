ARG NODE_VERSION=24.14.0
FROM node:${NODE_VERSION}-slim

ARG PI_VERSION=0.55.1

# System tools pi commonly needs
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    git \
    jq \
    ripgrep \
    && update-ca-certificates && rm -rf /var/lib/apt/lists/*

# Install pi
RUN npm install -g @mariozechner/pi-coding-agent@${PI_VERSION}

WORKDIR /workspace

ENTRYPOINT ["pi"]
