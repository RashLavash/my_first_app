FROM python:3

WORKDIR /my_app

EXPOSE 8001

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./wsgi.py", "0.0.0.0:8001", "--settings=mysite.settings.prod" ]