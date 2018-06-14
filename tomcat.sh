scp -i /home/ubuntu/ec2key.pem -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/wipro-myweb/target/myapp-SNAPSHOT-1.0-1.1.4.war ubuntu@34.217.148.218:/opt/tomcat8/webapps/


a=$(head -n 7 pom.xml | tail -n 1 |awk '{print $1}' | sed -e "s/<version>//" | sed 's/.\{10\}$//')
echo $a
rm -rf *.war
wget http://18.236.64.135:8081/repository/maven-releases/in/mpcechno/myapp/$a/myapp-$a.war
mv *.war myapp.war
