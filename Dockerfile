FROM python:alpine

COPY . .

RUN pip install -r requirements.txt


RUN mkdir test && \
    chgrp -R 0 /test && \
    chmod -R g=u /test


CMD python3 app.py
