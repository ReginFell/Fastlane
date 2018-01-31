FROM unitedclassifiedsapps/gitlab-ci-android-fastlane

RUN apk update && apk add --no-cache \
    bash \
    perl \
    curl \
    unzip \
    zip \
    git \
    ruby \
    && wget https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.zip \
    && unzip google-cloud-sdk.zip \
    && rm google-cloud-sdk.zip \
    && google-cloud-sdk/install.sh \
    ruby-dev \
    ruby-rdoc \
    ruby-irb \
    openssh \
    g++ \
    make \
    && rm -rf /tmp/* /var/tmp/*

RUN gcloud init