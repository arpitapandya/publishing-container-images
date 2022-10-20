FROM python:3-alpine

RUN apk add --update \
    bash \
    coreutils \
    curl \
    vim

COPY simple.py /user/local/bin
RUN chmod +x /user/local/bin/simple.py

ENTRYPOINT ["/user/local/bin/simple.py"]
CMD [ "/bin/bash" ]