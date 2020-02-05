FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y make git openjdk-8-jdk
RUN mkdir /srv/backup && chown jenkins:jenkins /srv/backup
USER jenkins
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64