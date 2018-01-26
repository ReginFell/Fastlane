FROM heikomaass/android-sdk:latest

RUN apt-get update && apt-get install --no-install-recommends -y build-essential git ruby2.3-dev \
    && gem install fastlane \
    && gem install bundler \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get autoremove -y && apt-get clean
	
RUN gem install fastlane

RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter build-tools-27.0.2 --no-ui --force -a"]
RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter sys-img-x86-android-23 --no-ui --force -a"]
