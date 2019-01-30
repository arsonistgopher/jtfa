FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://releases.hashicorp.com/terraform/0.12.0-alpha4/terraform_0.12.0-alpha4_terraform_0.12.0-alpha4_linux_amd64.zip \
  && unzip terraform_0.12.0-alpha4_terraform_0.12.0-alpha4_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.12.0-alpha4_terraform_0.12.0-alpha4_linux_amd64.zip

RUN git clone https://github.com/arsonistgopher/jtfa

WORKDIR /jtfa