FROM tomcat:10.1-jdk21

RUN apt-get update && apt-get install -y findutils

WORKDIR /app
COPY . .

RUN mkdir -p build/WEB-INF/classes

# Compile Java with servlet API
RUN find src/main/java -name "*.java" > sources.txt && \
    javac -cp /usr/local/tomcat/lib/servlet-api.jar \
    -d build/WEB-INF/classes @sources.txt

# Copy web files
RUN cp -r src/main/webapp/* build/

# Create WAR properly
RUN cd build && jar -cvf ROOT.war .

# Deploy
RUN rm -rf /usr/local/tomcat/webapps/*
RUN cp build/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]