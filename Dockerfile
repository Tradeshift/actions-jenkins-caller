FROM alpine:3.11.2 as builder

RUN echo "Building up image for project actions-jenkins-caller"

COPY . /actions-jenkins-caller

WORKDIR /actions-jenkins-caller

ENTRYPOINT echo "Hello world"
