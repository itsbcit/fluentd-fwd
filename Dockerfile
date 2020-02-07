FROM fluent/fluentd:v1.9.0-1.0

LABEL maintainer="jesse@weisner.ca"
LABEL fluentd_version="1.9.0-1.0"
LABEL splunkhec_version="2.0"
LABEL build_id="1581111109"

USER root
RUN fluent-gem install fluent-plugin-splunkhec -v 2.0

RUN chmod 1777 /fluentd/log
VOLUME /fluentd/log

USER fluent
