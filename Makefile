
install:
	pip install -e .[dev]
	pre-commit install

dev:
	pip install -e .[dev,docs]

test:
	pytest -s

cov:
	pytest --cov=demo_project

mypy:
	mypy . --ignore-missing-imports

pylint:
	pylint demo_project

ruff:
	ruff --fix demo_project/*.py

git-rm-merged:
	git branch -D `git branch --merged | grep -v \* | xargs`

update:
	pur

update-pre:
	pre-commit autoupdate --bleeding-edge

git-rm-merged:
	git branch -D `git branch --merged | grep -v \* | xargs`

release:
	git push
	git push origin --tags

build:
	rm -rf dist
	pip install build
	python -m build
