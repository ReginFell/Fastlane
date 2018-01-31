FROM unitedclassifiedsapps/gitlab-ci-android-fastlane

RUN apk update && apk add --no-cache \
    bash \
    perl \
    curl \
    unzip \
    zip \
    git \
    ruby \
    ruby-dev \
    ruby-rdoc \
    ruby-irb \
    openssh \
    g++ \
    make \
    && rm -rf /tmp/* /var/tmp/*

RUN apk update && apk add google-cloud-sdk
RUN gcloud init