# Pi Docker Image

Containerized [pi coding agent](https://github.com/mariozechner/pi-coding-agent) with Node.js and common development tools. Supports `linux/amd64` and `linux/arm64` platforms, with daily automated updates for new Node.js LTS and pi releases.

## Getting Started

- **Pull and run:**
    ```bash
    docker pull ucyo/pi:latest
    docker run --rm -it ucyo/pi:latest
    ```

- **Build locally:**
    ```bash
    make build
    make run
    ```
