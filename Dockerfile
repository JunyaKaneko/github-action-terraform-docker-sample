FROM ubuntu

RUN apt-get update && \
    apt-get install -y wget unzip
RUN wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip && \
    unzip terraform_0.12.12_linux_amd64.zip && \
    cp terraform /usr/local/bin/terraform && \
    chmod +x /usr/local/bin/terraform
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
