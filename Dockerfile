# Set the base image to use
FROM centos:latest

# Add users
RUN for user in frank; do useradd $user; echo "1234" | passwd $user --stdin; done

RUN  yum update -y && yum install mysql -y
