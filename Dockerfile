# Set the base image to use
FROM Centos:7

# Set the working directory
RUN for user in frank; do useradd $user; echo"1234" | passwd $user --stdin; done
RUN  yum update -y && yum install mysql -y
