ARG PYTHON_IMAGE_VERSION=alpine
FROM python:${PYTHON_IMAGE_VERSION}

RUN apk update
RUN apk upgrade
RUN apk add bash git

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Custom cache invalidation
ARG CACHEBUST=1

COPY . .

CMD [ "python", "./main.py" ]

