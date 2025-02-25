FROM ghcr.io/astral-sh/uv:debian-slim

ADD . /app
WORKDIR /app

RUN uv sync --frozen

CMD ["uv",  "run", "hypercorn", "app/main:app"]
