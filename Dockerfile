FROM python:3.9

#install os modules
RUN apt update -y && apt install telnet && rm -rf /var/lib/apt/lists/*

#copy source code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirements.txt /data-copier

#installing dependencies
RUN pip install -r /data-copier/requirements.txt