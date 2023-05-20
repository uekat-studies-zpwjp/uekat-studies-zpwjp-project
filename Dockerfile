ARG PYTHON_IMAGE_VERSION=alpine
FROM python:${PYTHON_IMAGE_VERSION}

LABEL org.opencontainers.image.source https://github.com/uekat-studies-zpwjp/uekat-studies-zpwjp-project
LABEL org.opencontainers.image.description='Uniwersytet Ekonimiczny in Katowice - project for the subject "Zaawansowane programowanie w języku Python" - Python image'
LABEL org.opencontainers.image.licenses=MIT

RUN apk update
RUN apk upgrade
RUN apk add bash git

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Custom cache invalidation
ARG CACHEBUST=1

COPY main.py .
COPY src .

CMD [ "python", "main.py" ]
