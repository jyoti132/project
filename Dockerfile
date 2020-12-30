FROM python:stretch

COPY . /app
WORKDIR /app


RUN pip install --upgrade pip
RUN pip install -r requirements.txt


EXPOSE 8082
ENTRYPOINT [ "gunicorn" , "-b", "0.0.0.0:8082", "main:APP"]