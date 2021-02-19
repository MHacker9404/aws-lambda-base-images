FROM scratch

ADD 0f33dd772e0fcd4b32642c2b69f4239534488914be97878dff777c51ecdd7d27.tar.xz /
ADD 2aa4fcf9a9b5bf96faacb78a72a4d55565f3619c4029ecdc6f447c64a83ce0b6.tar.xz /
ADD 779d11a3322084784e54cb292f24d48d5345b98445aecdc0beeecb0f969db00b.tar.xz /
ADD 8bd9f63aeb02ca8ccc99ddb889e3ba737f62dd96678426693e9f1ce3406eccc6.tar.xz /
ADD f09e523febcc73f37f1a82cebcd93f1c542ad84c08e6a138452817b55a08e191.tar.xz /
ADD f211c9a47ee421385d884f989e274e2e9513b96e3c29139b28adca8fe8cbaac5.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

