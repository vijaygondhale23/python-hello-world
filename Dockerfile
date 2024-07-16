FROM python:3.12-rc-slim
WORKDIR /usr/src/app/
RUN apt update
COPY . /usr/src/app/
ENTRYPOINT ["python", "hello-world.py"]

