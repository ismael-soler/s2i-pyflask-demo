FROM python:alpine

COPY . .

RUN mkdir test && \
    chgrp -R 0 /test && \
    chmod -R g=u /test

WORKDIR /test

RUN pip install -r requirements.txt

CMD python3 app.py
