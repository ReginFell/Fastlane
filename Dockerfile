FROM unitedclassifiedsapps/gitlab-ci-android-fastlane

RUN echo pwd

RUN apt-get update && apt-get install google-cloud-sdk