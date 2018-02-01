FROM unitedclassifiedsapps/gitlab-ci-android-fastlane
	
ENV CLOUD_SDK_VERSION 183.0.0

ENV PATH /google-cloud-sdk/bin:$PATH
RUN apk --no-cache add \
        curl \
        python \
        py-crcmod \
        openssh-client \
        git \
    && wget --quiet --output-document=/tmp/google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.tar.gz \
     mkdir -p /opt \
     tar zxf /tmp/google-cloud-sdk.tar.gz --directory /opt \
     /opt/google-cloud-sdk/install.sh --quiet \
     source /opt/google-cloud-sdk/path.bash.inc \


	
RUN gcloud init