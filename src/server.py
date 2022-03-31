from fastapi import FastAPI
from fastapi.responses import JSONResponse

from src.routers import health

app = FastAPI()
app.include_router(health.router)


@app.get("/")
async def root() -> JSONResponse:
    return JSONResponse(status_code=200, content={"status": "OK"})
