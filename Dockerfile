FROM python:2.7.8

RUN \
	pip install requests PyQuery 

EXPOSE 80
COPY src/ /root/
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
CMD ["/bin/bash", "/start.sh"]
