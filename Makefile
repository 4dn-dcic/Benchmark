
configure:
	pip install poetry==1.4.2

build:
	make configure
	poetry install

install:
	poetry install

update:  # updates dependencies
	poetry update

publish-pypi:
	scripts/publish-pypi

help:
	@make info

info:
	@: $(info Here are some 'make' options:)
	   $(info - Use 'make configure' to install poetry)
	   $(info - Use 'make install' to install dependencies using poetry.)
	   $(info - Use 'make publish-pypi' to publish this library to Pypi)
	   $(info - Use 'make update' to update dependencies (and the lock file))