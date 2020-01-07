FROM python:3.6.2

RUN pip install Flask==0.11.1

WORKDIR /app
COPY app /app

CMD ["python", "service.py"]