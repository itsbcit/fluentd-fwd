FROM fluent/fluentd:v1.9.0-1.0

LABEL maintainer="jesse@weisner.ca"
LABEL fluentd_version="1.9.0-1.0"
LABEL splunkplugin_version="0.10.0"
LABEL splunk_plugin="splunk-enterprise"
LABEL build_id="1581359976"

USER root
RUN fluent-gem install fluent-plugin-splunk-enterprise -v 0.10.0

RUN chmod 1777 /fluentd/log
VOLUME /fluentd/log

USER fluent
