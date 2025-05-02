# Python DevOps Template

Minimal Python project template with:

- Docker + Compose
- GitLab CI/CD
- Pre-commit hooks
- Pytest with coverage
- Linting (Black, isort, flake8)

## Local usage

### Installation
To set up the project locally, you can choose between two options:

#### Using pip
```bash
python -m venv .venv
source .venv/bin/activate  # Linux/macOS
# .venv\Scripts\activate  # Windows
pip install -r requirements.txt
```

#### Using poetry

```bash
poetry shell
poetry install
```

### Running
```bash
python ./app/main.py
```

### Testing
```bash
python -m pytest -v ./tests
```

### Coverage
```bash
coverage run --source=app -m pytest -v tests && coverage report -m
```

## Docker usage

### Running
```bash
docker build -t python-devops-template .
docker run python-devops-template:latest
```

### Testing
```bash
docker build -t python-devops-template .
docker run python-devops-template:latest python -m pytest -v ./tests
```

### Examine container
```bash
docker run -it python-devops-template bash
```

## GitHub Actions
The repository is configured with a ci.yml file for GitHub Actions. It includes:
- Linting
- Testing with coverage
- Docker image build

The pipeline is triggered automatically when pushing to the repository.

## GitLab CI/CD
The repository also has a .gitlab-ci.yml file for GitLab CI/CD pipelines. It includes:
- Linting
- Testing with coverage
- Docker image build

The pipeline would be triggered automatically if pushed to GitLab.

## Pre-commit Hooks
This project uses pre-commit hooks for automatic linting and formatting. To install the hooks:

```bash
pre-commit install
```

## Make

This project uses make to easily run tasks.
```bash
make lint
make test
make cov
make dev
```
