# Tadbir

**Tadbir** is an integrated system for crowd-flow management and guidance during large-scale pilgrimages (Umrah/Hajj) in Saudi Arabia.

This monorepo contains all components:

- **Manarah** – Operator dashboard
- **Sirat** – Android app for pilgrims
- **API Service** – FastAPI backend for guidance and telemetry
- **Simulator** – Synthetic data generator for capacity and flows
- **Infra** – Terraform IaC for cloud deployment

## 📦 Prerequisites

| Tool | Version | Notes |
|------|----------|-------|
| Node.js | ≥ 18.x | for Manarah |
| pnpm | ≥ 9.x | preferred package manager |
| Python | ≥ 3.11 | for API & simulator |
| Java | 17 | for Sirat app |
| Terraform | ≥ 1.9 | for infra |
| Docker | latest | optional for local containers |

Install on macOS with:

```bash
brew install node pnpm python terraform openjdk@17 
```

## ⚙️ Installation

Clone the project:

```bash
git clone https://github.com/hayderhassan/tadbir.git 
```

Go to the project directory:

```bash
cd tadbir 
```

Install:

```bash
make bootstrap 
```

## ▶️ Run Locally

To start everything locally:

```bash
make up 
```

Then open:

API: http://localhost:8000/docs

Dashboard: http://localhost:3000

## 📂 Structure

- [apps/](./apps)
  - [manarah/](./apps/manarah)      → Next.js dashboard
  - [sirat/](./apps/sirat)              → Android app
- [infra/](./infra)                      → Terraform modules
- [services/](./services)
  - [api/](./services/api)                 → FastAPI backend
  - [simulator/](./services/simulator)       → data generator

## ✅ Features

**System-Wide**

[ ] Secure authentication and JWT flow \
[ ] Real-time data pipeline \
[ ] Internationalisation (EN/AR) \
[ ] Observability (metrics, logs) \
[ ] Cloud deployment via Terraform

## License

[MIT](https://choosealicense.com/licenses/mit/) © Hayder Hassan
