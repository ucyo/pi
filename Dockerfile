ARG NODE_VERSION=24.14.1
FROM node:${NODE_VERSION}-slim

ARG PI_VERSION=0.62.0

# Add uv

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# System tools pi commonly needs
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    make \ 
    procps \
    git \
    jq \
    ripgrep \
    && update-ca-certificates && rm -rf /var/lib/apt/lists/*

# Install pi
RUN npm install -g @mariozechner/pi-coding-agent@${PI_VERSION}

WORKDIR /workspace

CMD ["pi"]
