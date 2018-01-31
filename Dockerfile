FROM unitedclassifiedsapps/gitlab-ci-android-fastlane

RUN apk update && apk add --no-cache \
    bash \
    perl \
    curl \
    unzip \
    zip \
    git \
    ruby \
	google-cloud-sdk \
    ruby-dev \
    ruby-rdoc \
    ruby-irb \
    openssh \
    g++ \
    make \
    && rm -rf /tmp/* /var/tmp/*

RUN gcloud init