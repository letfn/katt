FROM python:3.6

ARG flask_env=production

ENV FLASK_ENV $flask_env

WORKDIR /app

ADD requirements.txt .
RUN pip install -r requirements.txt

ADD app.py now.py .

ENTRYPOINT ["python", "/app/app.py"]
