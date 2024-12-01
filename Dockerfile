# Use the official NGINX base image
#FROM nginx:latest

# Copy custom configuration file for NGINX (optional)
#COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy website files to the NGINX HTML directory (optional)
#COPY index.html /usr/share/nginx/html

# Expose the default HTTP port
#EXPOSE 80

# The default command in the NGINX image runs the server
#CMD ["nginx", "-g", "daemon off;"]

#FROM node:20-alpine
#WORKDIR /app
#COPY . .
#RUN yarn install --production
#CMD ["node", "./src/index.js"]

FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

