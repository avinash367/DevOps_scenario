FROM docker:19.03.5

ENV TERRAFORM_VERSION="0.12.25"
ENV KUBECTL_VERSION="1.13.12"
ENV KUBECTX_VERSION="0.7.1"
ENV HELM_VERSION="3.0.3"
ENV BIN_PATH="/usr/local/bin"
ENV PATH="/google-cloud-sdk/bin:${PATH}"

COPY extra /extra

RUN apk update && apk upgrade && \
  apk add --no-cache python3-dev bash git openssh-client openssl ca-certificates tar wget unzip py3-pip && \
  pip3 install --upgrade pip && \
  pip install awscli && \
  pip install wheel && \
  /extra/terraform/terraform.sh && \
  /extra/kubectl/kubectl.sh && \
  /extra/helm/helm.sh && \
  rm -rf /extra
