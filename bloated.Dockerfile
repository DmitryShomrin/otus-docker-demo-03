FROM busybox:musl
LABEL maintainer="asu@express42.com"
LABEL version="pre-alpha"
EXPOSE 80
WORKDIR /tmp

COPY index.html /tmp/
RUN dd if=/dev/zero of=/tmp/test.trash bs=1M count=16
RUN rm test.trash

RUN dd if=/dev/zero of=/tmp/test.trash bs=1M count=16
RUN rm test.trash

RUN dd if=/dev/zero of=/tmp/test.trash bs=1M count=16
RUN rm test.trash

CMD httpd -f