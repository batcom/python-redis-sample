FROM python:2.7.8

RUN \
	pip install requests PyQuery 

EXPOSE 80
CMD [ "python","time.py"]
