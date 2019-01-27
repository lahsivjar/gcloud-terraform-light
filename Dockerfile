FROM hashicorp/terraform:light

RUN apk add --update python

RUN curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-231.0.0-linux-x86_64.tar.gz > /tmp/google-cloud-sdk.tar.gz

RUN mkdir -p /usr/local/gcloud \
        && tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz \
        && /usr/local/gcloud/google-cloud-sdk/install.sh --quiet

ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin
