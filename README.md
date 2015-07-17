Docker aws-ses
=============

Sending email using AWS SES service. Requirements to run the container:

* You have verified sender address with AWS SES service
* The EC2 instance has role-based SES service access or you pass in AWS credentials the container.

This repo triggers auto-build and push images to dockerhub.com/u/xueshanf/aws-ses.

Build the image

Rebuild image. This will upgrade the package too:

```
core@n1 git clone https://github.com/xueshanf/docker-aws-ses.git
core@n1 docker build -t xueshanf/aws-ses .
```

Use the image
========

```
core@n1 /usr/bin/docker run --rm
   -v /path/to/.aws:/root/.aws \
   -e FROM=verified-sender@example.com \
   -e TO="rcpt1@example.com,rcpt2@example.com \
   -e SUBJECT="This is a test" \
   -v /path/to/message.txt:/tmp/message.txt xueshanf/aws-ses 
```
