FROM python:3.7-alpine3.11

WORKDIR /usr/src/app

RUN set -eux && \
    sed -i 's/dl-cdn.alpinelinux.org/mirror.tuna.tsinghua.edu.cn/g' /etc/apk/repositories && \
    apk add --update \
    postgresql-dev \
    gcc g++ libffi-dev py-cffi \
    musl-dev \
    linux-headers && \
    pip install wheel pip2pi -i https://pypi.douban.com/simple    

CMD [ "tail","-f","/dev/null"]
