FROM java-21-alpine

RUN apk add fontconfig mkfontscale libfontenc encodings font-dejavu font-alias
RUN wget https://get.jenkins.io/war-stable/2.440.1/jenkins.war

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "jenkins.war", "httpPort=8080"]
