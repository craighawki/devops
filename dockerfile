# Each instruction in this file generates a new layer that gets pushed to my local image cache
# The line below states I will base my new image on the Latest Official Python
FROM python:latest

# Itentify the maintainer of the image
LABEL version="0.0.1"
LABEL maintainer="craighawki@gmail.com"

# Add a python script
ADD webwords.py /

# Execute the python script
CMD [ "python", "./webwords.py" ]