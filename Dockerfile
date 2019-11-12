ARG test=""
FROM busybox:musl
ARG test
LABEL maintainer="asu@express42.com"
LABEL version="pre-alpha"
EXPOSE 80
WORKDIR /tmp/$test

COPY index.html /tmp/
RUN dd if=/dev/zero of=/tmp/test.trash bs=1M count=16 && rm test.trash \
    && dd if=/dev/zero of=/tmp/test.trash bs=1M count=16 && rm test.trash \
    && dd if=/dev/zero of=/tmp/test.trash bs=1M count=16 && rm test.trash
CMD httpd -f
