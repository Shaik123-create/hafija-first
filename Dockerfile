FROM java:8
VOLUME /tmp
ADD target/hafija-first-0.0.1-SNAPSHOT.jar hafija-first.jar
RUN sh -c 'touch /hafija-first.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","hafija-first.jar"]
EXPOSE 8081
