FROM docker.artifactory.us.caas.oneadp.com/splunk
RUN mkdir /app/splunk
WORKDIR /app
RUN wget https://artifactory.us.caas.oneadp.com/artifactory/splunk-generic-local/splunk-9.0.4-de405f4a7979-Linux-x86_64.tgz
RUN tar -xvf splunk-9.0.4-de405f4a7979-Linux-x86_64.tgz
RUN groupadd -g 754 splunk
RUN useradd -g splunk -u 754 splunk -m
RUN /app/splunk/bin/splunk version --accept-license --answer-yes --seed-passwd admin:password
RUN /app/splunk/bin/splunk enable boot-start -user splunk -systemd-managed 1 --answer-yes --auto-ports --no-prompt --accept-license
RUN chown -R splunk:splunk /app/splunk
RUN sudo systemctl start Splunkd.service
