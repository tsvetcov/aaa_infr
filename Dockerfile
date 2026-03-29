FROM python:3.8

ENV FLASK_APP=server.py PROJ_DIR=. LOG_LEVEL=debug
LABEL author="Roman Tsvetkov" version="0.0.1"


COPY $PROJ_DIR ./app
WORKDIR app
RUN pip install -r requirements.txt
EXPOSE 8080

CMD ["python", "server.py"]