FROM python:alpine

COPY . .

RUN chgrp -R 0 /some/directory && \
    chmod -R g=u /some/directory


WORKDIR /some/directory

RUN pip install -r requirements.txt


CMD python3 app.py
