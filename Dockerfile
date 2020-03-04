FROM openjdk:8-jre

ENV WIREMOCK_VERSION 2.26.2

WORKDIR /wiremock

RUN wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$WIREMOCK_VERSION/wiremock-standalone-$WIREMOCK_VERSION.jar \
  -O wiremock-standalone.jar

ENTRYPOINT ["java", "-jar", "wiremock-standalone.jar"]
