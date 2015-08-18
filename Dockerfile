FROM debian:jessie

ENV HOME /root
USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ipython3 python3
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install npm nodejs-legacy
RUN npm install -g configurable-http-proxy
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3-pip
RUN pip3 install "ipython[notebook]"
RUN pip3 install "ipython[notebook]" --upgrade
RUN pip3 install jupyterhub

EXPOSE 8000

CMD jupyterhub
