FROM gitpod/workspace-rust

USER gitpod

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get -q update \
    && sudo apt-get install -yq \
        libpython3.6 \
        rust-lldb \
    && sudo rm -rf /var/lib/apt/lists/*

ENV RUST_LLDB=/usr/bin/lldb-8