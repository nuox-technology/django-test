FROM python:3.11.4-slim-buster

WORKDIR /django

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

EXPOSE 8002

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

RUN pip install psycopg2-binary

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8002"]
