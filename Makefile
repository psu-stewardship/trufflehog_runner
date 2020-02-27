GIT_URL=GIT_URL

.PHONY: help

help: ## help
	@echo "Usage: make scan GIT_URL={url of repo you want to scan}"

scan: ## run it with GIT_URL variable
	docker run truffle_hog_web $$GIT_URL
