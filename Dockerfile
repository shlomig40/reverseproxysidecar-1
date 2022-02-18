FROM python:3
RUN pip install gunicorn flask
ADD main.py wsgi.py /app/
EXPOSE 5001
WORKDIR /app
ENTRYPOINT [ "gunicorn","--bind","0.0.0.0:5001","wsgi:app" ]