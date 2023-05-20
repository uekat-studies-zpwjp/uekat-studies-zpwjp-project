# uekat-studies-zpwjp-project
Uniwersytet Ekonimiczny in Katowice - project for the subject "Zaawansowane programowanie w języku Python"

## Instalation

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Run application

```bash
python main.py
```

## Run application - Docker - Dev

```bash
docker compose -f ./docker-compose.dev.yml up
```

## Build and deploy
All built and deployed using CI/CD

## Structure

- src - folder with sources
- docker-compose.dev.yml - docker compose - DEV
- docker-compose.prod.yml - docker compose - PROD
- Dockerfile - docker image
- requirements.txt - python requirements file
- main.py - default python program to run

## Some info

- Website: https://uekat-studies-zpwjp-project.cytr.us
- Enabled user:
    - Login: test
    - Password: zaq1@WSX
- Disabled user:
    - Login: test2
    - Password: cde3$RFV
