FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04
RUN apt-get update --fix-missing && \
    apt-get install -y \
      sudo \
      make \
      vim \
      git \
      llvm-6.0 freeglut3 freeglut3-dev \
      cmake libeigen3-dev libboost-all-dev \
      libpng-dev libjpeg-dev libz3-dev

RUN apt install -y libtbb-dev libtiff-dev

RUN git clone https://github.com/nmoehrle/mvs-texturing.git mvs-texturing
RUN cd mvs-texturing && mkdir build && cd build && cmake .. && make -j && make install

