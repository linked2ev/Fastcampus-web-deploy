FROM centos:latest

RUN yum install -y epel-release
RUN yum install -y nginx

COPY ./ /usr/share/nginx/html/Fastcampus-web-deploy

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]