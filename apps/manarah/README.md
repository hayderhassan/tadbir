# Manarah Dashboard

**Manarah** is the operator’s control and monitoring interface for Tadbīr.

It displays live capacity data, heatmaps, and routing forecasts.

## 📦 Prerequisites

| Tool | Version |
|------|----------|
| Node.js | ≥ 18.x |
| pnpm | ≥ 9.x |

Install on macOS with:

```bash
brew install node pnpm
```

## ⚙️ Installation

Go to the project directory:

```bash
cd apps/manarah 
```

Install dependencies:

```bash
pnpm install
```

## ▶️ Run Locally

To start server

```bash
pnpm dev
```

Then visit: http://localhost:3000

Build for production:

```bash
pnpm build && pnpm start
```

## 🛠 Tech Stack

Next.js • TypeScript • Tailwind CSS • shadcn/ui • Recharts • MapLibre

## ✅ Features

[ ] Live capacity visualisation \
[ ] Route and risk overlays \
[ ] Operator controls (close / reopen corridor) \
[ ] Arabic localisation (RTL support) \
[ ] Role-based access control \
[ ] Forecast charts and KPIs \
[ ] Incident management view

## License

[MIT](https://choosealicense.com/licenses/mit/) © Hayder Hassan
