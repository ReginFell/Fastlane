FROM heikomaass/android-sdk:latest

RUN apt-get update -qq
RUN apt-get install -y ruby

RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter build-tools-27.0.2 --no-ui --force -a"]
RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter sys-img-x86-android-23 --no-ui --force -a"]
