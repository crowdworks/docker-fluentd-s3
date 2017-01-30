FROM fluent/fluentd

RUN fluent-gem install -q fluent-plugin-forest && \
    fluent-gem install -q fluent-plugin-s3 && \
    fluent-gem install -q fluent-plugin-tail-ex

USER root
RUN mkdir -p /fluentd/buffer && \
    chown fluent:fluent /fluentd/buffer

USER fluent
