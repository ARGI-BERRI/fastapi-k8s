FROM ghcr.io/astral-sh/uv:debian-slim

ADD . /app
WORKDIR /app

RUN uv sync --frozen

# uvicorn を使用してアプリを起動
CMD ["uv",  "run", "app/main:app"]
