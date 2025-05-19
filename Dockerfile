FROM python:3.12-slim

RUN pip install uv

WORKDIR /app

COPY pyproject.toml uv.lock ./

RUN uv pip install -e . --system

COPY . .

CMD ["uv", "run", "main.py"] 