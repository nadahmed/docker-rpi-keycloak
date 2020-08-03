FROM balenalib/raspberry-pi-debian-openjdk:8-stretch
LABEL MAINTAINER 'Noor Al Din Ahmed <nooraldinahmed@gmail.com>'

WORKDIR /data
RUN install_packages wget
RUN wget https://downloads.jboss.org/keycloak/11.0.0/keycloak-11.0.0.tar.gz \
      && tar xvfp keycloak-11.0.0.tar.gz \
      && rm keycloak-11.0.0.tar.gz

COPY config/keycloak-add-user.json /data/keycloak-11.0.0/standalone/configuration/keycloak-add-user.json

CMD ["/data/keycloak-11.0.0/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 9990
