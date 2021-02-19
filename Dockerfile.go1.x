FROM scratch

ADD 113459727209d31345262651a05cdc80a40ff0baa8ea25b52e64d76b4f0d4520.tar.xz /
ADD 2d96baa431b4fa491c69a76641fc2262506d2d90d411b9b8c2c75edc7b3a075a.tar.xz /
ADD 310ab57204da0e391bd5a9b95971a5c9b9b7795e7555ebd3fc449f4fa524f637.tar.xz /
ADD 49e3e17efe6b2ff4e517eb9073389ea10a321806170c052947ca2d03f3bd84b2.tar.xz /
ADD 519b80a0e47a20647c9edfb896ea23356f85b53c2595b7915291d22b0b7f1136.tar.xz /
ADD afffe5db3c979fc690cfccea7fe29ff11be3e368a7dc795e47f6f8ce4043c8b5.tar.xz /
ADD e0fd9716056d474076bc9f2f70f814b27e314b8e8c902a1ec5c405ab1973ed9a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

