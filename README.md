# About
Terraform module to spin up a docker container

See https://github.com/mkinney/webpinggo

# Workflow
- commit
- tag release
```
git tag -a v0.0.1 -m "v0.0.1"
```
- push tags
```
git push origin --tags
```
- push changes
```
git push
```

# Steps
```
terraform init
terraform plan
terraform apply
```
