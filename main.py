import uvicorn

if __name__=="__main__":
    uvicorn.run("src.app.app:app", host='0.0.0.0', reload=True)
