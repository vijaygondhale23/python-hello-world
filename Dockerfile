FROM python:3.12-rc-slim

COPY . /usr/src/app/

ENTRYPOINT ["python", "/usr/src/app/hello-world.py"]

