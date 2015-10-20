FROM python:3.4

ADD ./adhs /adhs
WORKDIR /adhs

RUN pip install -r requirements.txt

EXPOSE 5000
CMD ./adhs.py -i n3 /data/data.n3 --host 0.0.0.0
