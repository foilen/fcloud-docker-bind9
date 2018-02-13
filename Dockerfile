FROM ubuntu:16.04

RUN export TERM=dumb ; apt-get update && apt-get install -y \
    bind9=1:9.10.3.dfsg.P4-8ubuntu1.10 \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
