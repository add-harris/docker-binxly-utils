FROM node

RUN apt-get update && apt-get install curl python -y

RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT [ "gsutil" ]