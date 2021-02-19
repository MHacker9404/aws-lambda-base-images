FROM scratch

ADD 236f0c854bca427047284df74bd163e6472dd250c240c357a5a581526e3afaed.tar.xz /
ADD 3a32ffcee61192297cb6c5f23ae60d4545b90236159a04cfc8c5e5120d9b987c.tar.xz /
ADD 6151281a2ca9449fc3b8a7636edff97b8d2fd5c440d5446ebe82f3db891dda48.tar.xz /
ADD 676d3691acc387ff94a40fc103f2818b4d424aa8a416c85e749c5e9df3465c14.tar.xz /
ADD 6f9eec0611e619b5cc0c4fdbabb8ffc88b0944fdbd48da6217b78b7ff10676be.tar.xz /
ADD 8bd9f63aeb02ca8ccc99ddb889e3ba737f62dd96678426693e9f1ce3406eccc6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

