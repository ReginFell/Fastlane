FROM heikomaass/android-sdk:latest

# Taken from https://gorails.com/setup/ubuntu/15.10
RUN apt-get update -yq && \
	apt-get install -yq git-core build-essential wget curl zlib1g-dev libssl-dev libyaml-dev \
	libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev ca-certificates && \
	cd /tmp/ && \
	wget http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.2.tar.gz && \
	tar -xvzf ruby-2.2.2.tar.gz && \
	cd ruby-2.2.2 && \
	./configure --enable-shared --disable-install-doc --disable-install-rdoc --disable-install-capi && \
	make install -j 5 && \
	cd /tmp && \
	rm -rf ruby-2.2.2

RUN gem install fastlane

RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter build-tools-27.0.2 --no-ui --force -a"]
RUN ["/opt/sdk-tools/android-accept-licenses.sh", "android update sdk --filter sys-img-x86-android-23 --no-ui --force -a"]
