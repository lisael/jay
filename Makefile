prefix=/usr/local

install: ## Install binary in $(prefix). Default prefix=/usr/local
	mkdir -p $(prefix)/bin
	cp jay $(prefix)/bin

uninstall: ## Remove binary from prefix.
	rm $(prefix)/bin/jay

reinstall:
	-rm $(prefix)/bin/jay
	mkdir -p $(prefix)/bin
	cp jay $(prefix)/bin

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "[36m%-30s[0m %s\n", $$1, $$2}'
