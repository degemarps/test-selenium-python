FROM python:3.9-alpine

WORKDIR /

COPY . /

RUN pip install -r requirements.txt

RUN sbase install chromedriver latest

CMD ["pytest", "--headless"]