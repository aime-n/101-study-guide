---
paths: ["terraform/**/*", "**/*.tf"]
---
# Terraform Conventions

- Use snake_case for all resource names
- Tag every resource with environment and team labels
- Never hardcode AMI IDs — use data sources
- All modules must have a variables.tf, outputs.tf, and README.md