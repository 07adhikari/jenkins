FROM jazzdd/alpine-flask

COPY . /app

WORKDIR /app

CMD ["app.py"]