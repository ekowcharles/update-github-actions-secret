FROM python:3.10.7-alpine3.15

WORKDIR /usr/src/app

# ENV OWNER
# ENV REPOSITORY
# ENV ACCESS_TOKEN
# ENV SECRET_NAME
# ENV SECRET_VALUE

COPY ./requirements.pip ./
COPY ./run.py ./

RUN pip install -r requirements.pip

ENTRYPOINT ["python3", "run.py"]