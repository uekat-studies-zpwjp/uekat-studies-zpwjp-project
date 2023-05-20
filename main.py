from fastapi import FastAPI
import uvicorn

app = FastAPI()


@app.get("/")
async def read_root():
    return {"Hello": "World"}

if __name__=="__main__":
    uvicorn.run("main:app", host='0.0.0.0', reload=True)
