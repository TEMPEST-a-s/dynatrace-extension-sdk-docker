FROM python:3.6

WORKDIR /usr/src/app

RUN apt update
RUN apt install zip unzip

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN unzip plugin*.zip plugin*whl
RUN pip install plugin_sdk*whl

CMD [ "bash" ]
#CMD [ "bash", "./script.sh" ]
