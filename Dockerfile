FROM heikomaass/android-sdk:latest

RUN apt-get install ruby
RUN gem install fastlane

RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter build-tools-27.0.2 --no-ui --force -a"]
RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter sys-img-x86-android-23 --no-ui --force -a"]
