FROM python:2.7

WORKDIR /usr/src

COPY sunny.py ./

ENTRYPOINT ["python", "sunny.py", "--clientid"]
CMD ["78abf60bad8281af"]

