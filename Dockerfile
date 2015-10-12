FROM python:2.7.8

RUN pip install -r requirements.txt

CMD [ "python","time.py"]
