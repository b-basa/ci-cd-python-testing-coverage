lint:
	pre-commit run --all-files

test:
	python -m pytest -v ./tests

cov:
	coverage run --source=app -m pytest -v tests && coverage report -m

dev:
	docker compose up --build
