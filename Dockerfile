FROM python:3.6.2


RUN pip install -r requirements/dev.txt

RUN flask db upgrade

RUN flask test

WORKDIR /app
COPY app /app

CMD ["gunicorn", "autoapp:app -b 0.0.0.0:$PORT -w 3"]