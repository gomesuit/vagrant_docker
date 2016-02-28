#!/bin/sh

# install docker
yum -y update
yum -y install net-tools
curl -fsSL https://get.docker.com/ | sh

#tee /etc/yum.repos.d/docker.repo <<-'EOF'
#[dockerrepo]
#name=Docker Repository
#baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
#enabled=1
#gpgcheck=1
#gpgkey=https://yum.dockerproject.org/gpg
#EOF

#yum -y install docker-engine

service docker start

docker run hello-world

yum -y install git
