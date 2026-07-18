FROM python:3.11
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:80", "app:app"]



