FROM docker:18.09

RUN apk add --no-cache curl python py-pip \
  && pip install awscli \
  && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl \
  && apk del curl
