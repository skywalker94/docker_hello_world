FROM python:3.8-alpine

WORKDIR .

COPY lib.txt .
RUN pip install -r lib.txt

COPY /. .

CMD ["python", "main.py"]
