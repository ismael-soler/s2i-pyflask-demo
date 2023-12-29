FROM python:alpine

COPY . .

RUN chgrp -R 0 / && \
    chmod -R g=u /


WORKDIR /

RUN pip install -r requirements.txt


CMD python3 app.py
