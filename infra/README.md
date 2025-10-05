# Infrastructure (Terraform)

Infrastructure-as-Code for deploying the Tadbīr ecosystem.

## 📦 Prerequisites

| Tool | Version |
|------|----------|
| Terraform | ≥ 1.9 |
| AWS account | for demo deployment |

Configure credentials:

```bash
aws configure
```

## ▶️ Usage

```bash
cd infra/envs/dev 
terraform init 
terraform plan 
terraform apply
```

## 🛠 Tech Stack

Terraform • AWS (Lambda, API Gateway, RDS, S3, CloudFront)

## ✅ Features

[ ] VPC and networking \
[ ] API Gateway + Lambda deployment \
[ ] RDS Postgres instance \
[ ] S3 + CloudFront for dashboard \
[ ] Monitoring (CloudWatch) \
[ ] CI/CD via GitHub Actions \
[ ] Cost optimisation tags

## License

[MIT](https://choosealicense.com/licenses/mit/) © Hayder Hassan
