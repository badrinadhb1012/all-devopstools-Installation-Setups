Installation of Jenkins Latest updated on 12/08/26

yum install java-21-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins
systemctl status jenkins

#After Installation , we get the jenkins dashabord , in that  leftside BUILD EXECUTOR STATUS gets failed in that time we need to increase the tmp size
# normally the tmp size is below 500M , now by using the command we need change to 4gb
commands to change
df -h --> sudo rm -rf /tmp/* --> sudo mount -o remount,size=4G /tmp After by using df -h command it get tmps value is 4gb.

Now restart the jenkins --> systemctl restart jenkins and
check the jenkins --> systemctl status jenkins 
updated on 12/08/26
