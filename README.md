# Jupyter

## Base docker image to run Jupyter in Debian Jessie

## To create the base image debian/jupyter, execute the following command:

```bash
# git clone https://github.com/FranBarrera/jupyter.git
# docker build -t debian/jupyter .
```

## Start your image binding the external ports 8000 in all interfaces to your container:

```bash
# docker run -d -p 8000:8000 debian/jupyter
```

## Test your deployment:

http://IP_HOST:8000
