FROM python:3

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

VOLUME [ "/app/data", "/app/config" ]

CMD [ "python", "./main.py" ]