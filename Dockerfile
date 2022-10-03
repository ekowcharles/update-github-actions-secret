FROM python:3.10.7-alpine3.15

WORKDIR /usr/src/app

# ENV OWNER
# ENV REPOSITORY
# ENV ACCESS_TOKEN
# ENV SECRET_NAME
# ENV SECRET_VALUE

COPY ./requirements.pip ./requirements.pip
COPY ./run.py ./run.py

RUN pip install -r requirements.pip

ENTRYPOINT ["/usr/local/bin/python", "/usr/src/app/run.py"]