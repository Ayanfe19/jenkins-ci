FROM openjdk:17
COPY src /usr/src/app
WORKDIR /usr/src/app
RUN javac Main.java
CMD ["java", "Main"]