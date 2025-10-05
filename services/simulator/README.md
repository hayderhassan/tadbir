# Tadbīr Simulator

Generates synthetic crowd and capacity data to feed the API.

## 📦 Prerequisites

| Tool | Version |
|------|----------|
| Python | ≥ 3.11 |

Install on macOS with:

```bash
brew install python
```

## ⚙️ Installation

Install dependencies:

```bash
cd services/simulator 
python3 -m venv .venv 
source .venv/bin/activate 
pip install requests pydantic
```

## ▶️ Run Locally

```bash
source .venv/bin/activate 
python simulate.py
```

## 🛠 Tech Stack

Python • Pydantic • Requests • Scheduler

## ✅ Features

[ ] Randomised flow generation \
[ ] Configurable zones and capacities \
[ ] API push integration \
[ ] Scheduled job (cron / Lambda) \
[ ] Visualization hooks

## License

[MIT](https://choosealicense.com/licenses/mit/) © Hayder Hassan
