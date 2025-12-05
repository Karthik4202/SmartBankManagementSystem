# Stage 1: Build the WAR using Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app

# Copy project files
COPY pom.xml .
COPY src ./src

# Build WAR
RUN mvn clean package -DskipTests

# Stage 2: Run the WAR with Tomcat
FROM tomcat:9.0-jdk17-temurin

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR from build stage
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]


