FROM tomcat:10.1-jdk21

RUN apt-get update && apt-get install -y findutils curl

WORKDIR /app
COPY . .

# -----------------------------
# Create build structure
# -----------------------------
RUN mkdir -p build/WEB-INF/classes

# -----------------------------
# Download Jakarta Servlet API (IMPORTANT)
# -----------------------------
RUN curl -L -o jakarta-servlet.jar \
https://repo1.maven.org/maven2/jakarta/servlet/jakarta.servlet-api/6.0.0/jakarta.servlet-api-6.0.0.jar

# -----------------------------
# Compile Java source files
# -----------------------------
RUN find src/main/java -name "*.java" > sources.txt && \
    javac -cp jakarta-servlet.jar \
    -d build/WEB-INF/classes \
    @sources.txt

# -----------------------------
# Copy webapp files
# -----------------------------
RUN cp -r src/main/webapp/* build/

# -----------------------------
# Create WAR file
# -----------------------------
RUN cd build && jar -cvf ROOT.war .

# -----------------------------
# Deploy to Tomcat
# -----------------------------
RUN rm -rf /usr/local/tomcat/webapps/*
RUN cp build/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]