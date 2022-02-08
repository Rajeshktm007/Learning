FROM  python:latest

WORKDIR /rajesh/py-deployment

COPY hello.py/ .

CMD ["python" , "./hello.py"]
