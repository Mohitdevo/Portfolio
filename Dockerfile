FROM tomcat:10.1-jdk21

RUN apt-get update && apt-get install -y findutils

WORKDIR /app

# Copy full project
COPY . .

# Create build folders
RUN mkdir -p build/WEB-INF/classes

# Compile all Java files
RUN find src/main/java -name "*.java" > sources.txt && \
    javac -d build/WEB-INF/classes @sources.txt

# Copy webapp files
RUN cp -r src/main/webapp/* build/

# Package WAR
RUN apt-get install -y zip && \
    cd build && zip -r ROOT.war .

# Deploy WAR to Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
RUN cp build/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]