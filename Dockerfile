FROM tomcat:7.0.90-jre8
ADD target/dockerExample.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh","run"]
