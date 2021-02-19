FROM scratch

ADD 4ec44db268b1a9cc327796c6029b7f01a88603a4d4832a7e6e33642f721a300c.tar.xz /
ADD 848e353afdcf94988252110303f3298914abcaae1b9c42be979e3491abdba525.tar.xz /
ADD 86c608cbe22669e48cff724ee8f02564be216e6afb832dc36905d758d6928409.tar.xz /
ADD 8bd9f63aeb02ca8ccc99ddb889e3ba737f62dd96678426693e9f1ce3406eccc6.tar.xz /
ADD b73bb3805706649f4894f89011ceb90b246eded3167a29f3fbdd54200a126581.tar.xz /
ADD c24ebe2a80f738a746cff2106faa3591a5059b1816ca89e05181857dbc35fd0e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

