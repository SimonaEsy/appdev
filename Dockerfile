FROM python:3.8
​
# set the working directory in the container
WORKDIR /usr/src/app
​
# copy the content of the local src directory to the working directory
COPY hello_world.py .
