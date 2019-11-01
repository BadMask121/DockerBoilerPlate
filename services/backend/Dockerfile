#Build the CentOS in the container as the base image

FROM centos:7
MAINTAINER DivergentNg <dev@divergent.ng>

#====================== ARGUMENTS =======================
ARG nodeVersion
ARG codeRootDirName


#====================== ENVIRONMENTS =======================
ENV source_code_dir="/var/www/apps"


#====================== COMMANDS =======================

#Add Node.js Yum Repository
RUN yum install -y gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum -y update

#create var/www/html & var/www/apps
RUN mkdir -p /var/www/html
RUN mkdir -p $source_code_dir

#enable the Remi repository
# RUN yum -y install epel-release yum-utils
# RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
# RUN yum-config-manager --enable remi

#copy the init_script.sh to the ROOT directory
COPY init_script.sh /

#install node and npm
RUN yum -y install nodejs

#install MYSQL command line interface
RUN yum -y install mysql

#print version of npm
RUN echo "npm version: $(npm -v)"

#install n (for node version control)
RUN npm install -g n

#print out that the container is going to attempt to install a specific node version
RUN echo "about to attempt an installation of node v ${nodeVersion}"

#install specific version of node
RUN n $nodeVersion

#change the working directory to the source code directory
WORKDIR $source_code_dir/${codeRootDirName}

#install prisma globally in container
RUN npm install -g prisma

#switch directory to prisma directory
WORKDIR $source_code_dir/${codeRootDirName}/prisma

#install sendmail
RUN yum install -y sendmail sendmail-cf m4 mailx

#confirm the version of node that is NOW installed
RUN echo "node version: $(node -v)"
