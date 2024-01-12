.DEFAULT_GOAL := lint

.PHONY:lint

fmt:
	terraform fmt

up:
	terraform init
	terraform plan
	terraform apply

destroy:
	terraform destroy

lint: fmt
	tflint
	terraform validate

FORCE: ;
