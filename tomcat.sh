scp -i /home/ubuntu/ec2key.pem -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/wipro-myweb/target/myapp-SNAPSHOT-1.0-1.1.4.war ubuntu@34.217.148.218:/opt/tomcat8/webapps/
