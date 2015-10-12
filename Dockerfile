FROM python:2.7.8

RUN \
	pip install requests PyQuery 

CMD [ "python","time.py"]
