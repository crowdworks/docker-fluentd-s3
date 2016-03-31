FROM fluent/fluentd

RUN fluent-gem install -q fluent-plugin-s3
