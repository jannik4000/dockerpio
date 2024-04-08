FROM ubuntu:24.04
#ubuntu:18.04
#python:3.11.3-slim
#3.9.0-slim

#ENV APP_VERSION="5.0.1" \
ENV APP_VERSION="6.1.14" \

    APP="platformio-core"

LABEL app.name="${APP}" \
      app.version="${APP_VERSION}" \
      maintainer="Sebastian Glahn <hi@sgla.hn>"

RUN df -h && \
    sudo apt-get clean && \
    df -h && \
    pip3 install -U platformio==${APP_VERSION} && \
    mkdir -p /workspace && \
    mkdir -p /.platformio && \
    chmod a+rwx /.platformio
    

USER 1001

#WORKDIR /workspace

#ENTRYPOINT ["platformio"] 
