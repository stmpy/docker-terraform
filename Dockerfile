FROM alpine:3.5

ENV TF_VERSION 0.9.3

RUN apk add --no-cache \
  curl \
  openssh-client

RUN curl -Lo /tmp/terraform.zip "https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip" \
  && unzip -d /usr/local/bin /tmp/terraform.zip \
  && rm /tmp/terraform.zip

COPY entrypoint /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint"]

CMD ["terraform"]

