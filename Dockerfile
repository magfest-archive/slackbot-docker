FROM python:3.4

# setup a virtual environment
RUN apt-get update && apt-get install -y git vim
RUN pip3 install virtualenv && virtualenv --always-copy /env

ADD build.sh /tmp/
RUN chmod 775 /tmp/build.sh # temp, windows hax
RUN /tmp/build.sh

VOLUME /data

ADD run.py /bot/

CMD [ "/env/bin/python3", "/bot/run.py" ]
