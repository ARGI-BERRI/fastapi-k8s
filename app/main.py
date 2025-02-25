from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


@app.get("/")
async def get_root() -> dict[str, str]:
    return {"message": "Kaixo, mundua"}


class Item(BaseModel):
    item_id: int
    q: str | None


@app.get("/items/{item_id}")
async def get_item(item_id: int, q: str | None = None) -> Item:
    return Item(item_id=item_id, q=q)
