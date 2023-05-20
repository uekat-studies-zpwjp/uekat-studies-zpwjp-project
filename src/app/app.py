from fastapi import FastAPI
from src.app.homepage.homepage import homepage_router
from src.app.prime.prime import prime_router
from src.app.current_time.current_time import current_time_router

app = FastAPI(
    title="uekat-studies-zpwjp-project",
    description="""
    Authorize data:

    - Enabled user:
    Login: test
    Password: zaq1@WSX

    - Disabled user:
    Login: test2
    Password: cde3$RFV
    """,
    version="1.0.1",
    license_info={
        "name": "MIT",
        "url": "https://github.com/uekat-studies-zpwjp/uekat-studies-zpwjp-project",
    },
)
app.include_router(homepage_router)
app.include_router(prime_router)
app.include_router(current_time_router)
