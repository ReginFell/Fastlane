FROM heikomaass/android-sdk:latest

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

RUN cat /etc/apt/sources.list
RUN cat /etc/apt/sources.list
	
RUN apt-get -y upgrade && apt-get update && apt-get install --no-install-recommends -y build-essential git ruby2.3-dev \
    && gem install fastlane \
    && gem install bundler \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get autoremove -y && apt-get clean

RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter build-tools-27.0.2 --no-ui --force -a"]
RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter sys-img-x86-android-23 --no-ui --force -a"]
