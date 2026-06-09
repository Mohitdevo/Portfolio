FROM tomcat:10.1-jdk21

WORKDIR /app

COPY . .

RUN mkdir -p build/WEB-INF/classes

RUN find src/main/java -type f -name "*.java" > sources.txt

RUN javac \
    -cp "/usr/local/tomcat/lib/*:src/main/webapp/WEB-INF/lib/*" \
    -d build/WEB-INF/classes \
    @sources.txt

RUN cp -r src/main/webapp/* build/

RUN cd build && jar -cvf ROOT.war .

RUN rm -rf /usr/local/tomcat/webapps/*

RUN cp build/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]