FROM busybox
COPY . /watcher
WORKDIR /watcher

RUN adduser -DHs /bin/bash test_adduser
RUN chown test_adduser watcher.sh
RUN chmod a+x watcher.sh
USER example

CMD ["/watcher/watcher.sh"]
