FROM xueshanf/awscli
MAINTAINER Xueshan Feng <sfeng@stanford.edu>
#
# docker run -e FROM=verified-aws-sender@example.com -e TO=you@example.com -v <messge-file>:/tmp/ses xueshanf/aws-ses 
#

# Install packages
# Add our script
ADD aws-ses.sh /aws-ses.sh
RUN chmod 755 /aws-ses.sh
CMD ["/aws-ses.sh"]
