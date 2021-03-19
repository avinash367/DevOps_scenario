FROM jenkins/jenkins:2.222.3

ARG DOCKER_VERSION="19.03.6"
ARG USER=jenkins

USER root
RUN curl -fsSL https://get.docker.com |VERSION=${DOCKER_VERSION} sh \
 && usermod -aG docker ${USER} \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/* \
 && touch /var/run/docker.sock && chown root.docker /var/run/docker.sock

USER ${USER}
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml
