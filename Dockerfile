FROM yg397/thrift-microservice-deps:xenial

ARG NUM_CPUS=4

COPY ./ /vendingmachine
RUN cd /vendingmachine \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make -j${NUM_CPUS} \
    && make install

WORKDIR /vendingmachine
