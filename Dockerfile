FROM fluent/fluentd

RUN fluent-gem install -q fluent-plugin-forest
RUN fluent-gem install -q fluent-plugin-s3

RUN mkdir -p /var/log/fluent && \
    mkdir -p /flunetd/buffer && \
    chown fluent:fluent /var/log/fluent /fluentd/buffer
