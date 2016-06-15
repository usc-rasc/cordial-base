FROM ros:indigo

ADD maestro.tar.gz .
ADD pyvona.zip .

RUN apt-get update && apt-get install -y ros-indigo-rosbridge-suite python-gst0.10 python-scipy unzip python-pygame ros-indigo-tf python-serial python-requests
RUN unzip pyvona.zip && cd pyvona-master && ./setup.py install && cd .. && rm -rf pyvona-master
