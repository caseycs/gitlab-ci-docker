FROM docker:18.09

RUN apk add --no-cache wget python py-pip \
  && pip install awscli \
  && wget -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl \
  && chmod +x /usr/local/bin/kubectl \
  && apk del wget
