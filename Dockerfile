FROM python:3.9-alpine

WORKDIR /selenium

COPY . /selenium

RUN pip install -r requirements.txt

CMD ["pytest", "--headless"]