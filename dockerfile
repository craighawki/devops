# Each instruction in this file generates a new layer that gets pushed to my local image cache
# The line below states I will base my new image on the Latest Official Ubuntu
FROM ubuntu:latest

# Itentify the maintainer of the image
LABEL version="0.0.1"
LABEL maintainer="craighawki@gmail.com"

# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

# Install nginx
RUN apt-get install nginx -y

# Expose port 90
EXPOSE 80

# This last line is the actual command to startup NGINX in my container.
CMD [ "nginx", "-g", "daemon off;"]