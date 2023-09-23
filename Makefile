.DEFAULT_GOAL := help

define HELP
print('\nUsage: make \033[92m[target]\033[0m\n')
with open('Makefile') as f:
	for line in f.readlines():
		if 'elif' in line or 'print' in line: continue
		if line.startswith('#>'):
			print(line.strip()[3:])
		elif ': ##> ' in line:
			print('    \033[92m{}\033[0m - {}'.format(*line.strip().split(': ##> ')))
print('')
endef
export HELP

.PHONY: help
help: ##> print the usage message
	@python3 -c "$$HELP"

.PHONY: build
build: ##> builds the docker container
	docker build --rm -t devcontainer .

.PHONY: run
run: ##> runs the docker container
	docker run --rm -it -w /workspace -v $(shell pwd)/..:/workspace devcontainer /bin/zsh

.PHONY: stop
stop: ##> stops the docker container
	docker stop devcontainer
