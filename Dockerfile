FROM alpine:latest
EXPOSE 8080
ENV FLASK_ENV=development
RUN apk add git python3 py3-pip && git clone https://github.com/introducciondocker/pyecho && cd pyecho && pip install -r requirements.txt && cd /pyecho/ && python3 main.py
