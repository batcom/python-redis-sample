FROM python:2.7.8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN pip install -r requirements.txt

EXPOSE 80

ADD ./start.sh /start.sh
ADD ./crontab /etc/crontab
ADD src/ /root/src/
RUN chmod 755 /start.sh
CMD ["/bin/bash", "/start.sh"]
