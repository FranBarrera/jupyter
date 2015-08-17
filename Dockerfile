FROM debian:jessie

DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y install ipython3 python3
DEBIAN_FRONTEND=noninteractive apt-get -y install npm nodejs-legacy
npm install -g configurable-http-proxy
DEBIAN_FRONTEND=noninteractive apt-get -y install python3-pip
pip3 install "ipython[notebook]"
pip3 install "ipython[notebook]" --upgrade
pip3 install jupyterhub

EXPOSE 8000

CMD jupyter
