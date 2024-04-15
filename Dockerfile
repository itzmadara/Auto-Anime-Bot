FROM python:3.11

RUN apt-get update && apt-get install -y python3-libtorrent

COPY requirements.txt /app/requirements.txt
WORKDIR /app

RUN python3 -m pip install -U -r requirements.txt 

CMD [ "python3" , "-m", "AAB"]
