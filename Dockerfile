#FROM ubuntu:16.04
#RUN apt-get update && apt-get install -y python python-pip
#RUN pip install flask
#COPY app.py /opt/
#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
FROM python:alpine3.10  
WORKDIR /app 
COPY requirements.txt /app/requirements.txt 
RUN pip install -r requirements.txt  
EXPOSE 8080  
COPY . /app 
ENTRYPOINT ["python", "./app.py"] 