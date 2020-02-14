FROM fluent/fluentd:v1.9.0-1.0

LABEL maintainer="jesse@weisner.ca"
LABEL fluentd_version="1.9.0-1.0"
LABEL rewritetag_version="2.2.0"
LABEL splunkplugin_version="1.2.0"
LABEL splunk_plugin="splunk-hec"
LABEL build_id="1581719019"

USER root
RUN fluent-gem install fluent-plugin-splunk-hec -v 1.2.0
RUN fluent-gem install fluent-plugin-rewrite-tag-filter -v 2.2.0

RUN chmod 1777 /fluentd/log
VOLUME /fluentd/log

USER fluent
