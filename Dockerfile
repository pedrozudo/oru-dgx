FROM nvidia/cuda:11.7.0-cudnn8-runtime-ubuntu22.04

RUN apt-get update \
    && \
    echo "------------------------------------------------------ essentials" \
    && \
    apt-get install -y --no-install-recommends -y \
    build-essential \
    apt-utils \
    && \
    echo "------------------------------------------------------ editors" \
    && \
    apt-get install -y --no-install-recommends -y \
    emacs \
    vim \
    nano \
    && \
    echo "------------------------------------------------------ software" \
    && \
    apt-get install -y --no-install-recommends -y \
    python3-pip \
    tmux \ 
    && \
    echo "------------------------------------------------------ cleanup" \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip3 install -r requirements.txt