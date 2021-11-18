from fastapi import FastAPI
from fastapi.responses import JSONResponse
from uvicorn import run

app = FastAPI()


@app.get("/")
async def root() -> JSONResponse:
    return JSONResponse(status_code=200, content={"status": "OK"})


if __name__ == "__main__":
    run("server:app", host="0.0.0.0", port=8000, reload=True)
