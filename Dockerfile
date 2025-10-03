# Use official Tomcat image
FROM tomcat:10.1-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Add your WAR to the webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose default port
EXPOSE 8080

# Tomcat will start automatically