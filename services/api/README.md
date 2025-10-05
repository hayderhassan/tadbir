# Tadbīr API Service

**FastAPI** backend providing:

- Guidance and route recommendations
- Slot reservations
- Telemetry intake from Sirat app

## 📦 Prerequisites

| Tool | Version |
|------|----------|
| Python | ≥ 3.11 |
| uv | latest stable |
| PostgreSQL | latest stable |

Install on macOS with:

```bash
brew install python
```

## ⚙️ Installation

Install dependencies:

```bash
cd services/api 
python3 -m venv .venv 
source .venv/bin/activate 
pip install -U pip fastapi uvicorn pytest
```

## ▶️ Run Locally

```bash
source .venv/bin/activate 
uvicorn tadbir_api.main:app --reload --port 8000 
```

Then open http://localhost:8000/docs

## 🛠 Tech Stack

FastAPI • Pydantic • Uvicorn • SQLAlchemy • PostgreSQL

## ✅ Features

[ ] /v1/guidance endpoint \
[ ] /v1/reservations endpoint \
[ ] /v1/telemetry endpoint \
[ ] JWT authentication \
[ ] PostgreSQL integration \
[ ] WebSocket updates \
[ ] Forecasting job integration

## License

[MIT](https://choosealicense.com/licenses/mit/) © Hayder Hassan
