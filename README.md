# Junior DevOps Lab

A personal DevOps learning lab built step by step.

The project starts with a static HTML page served by Nginx inside a Docker container.

The goal is to gradually expand it with Docker Compose, GitHub Actions, Kubernetes, and Terraform.

## Project Status

- Static HTML page
- Docker image based on Nginx
- Local container execution
- Docker Compose configuration
- GitHub Actions workflow for Docker build validation

## Technologies

- HTML
- Docker
- Docker Compose
- Nginx
- GitHub Actions

## How to Run with Docker

Build the Docker image:

```bash
docker build -t junior-devops-lab .
```

Run the container:

```bash
docker run --name junior-devops-lab -p 8080:80 -d junior-devops-lab
```

Open in your browser:

```text
http://localhost:8080
```

Stop the container:

```bash
docker stop junior-devops-lab
```

## How to Run with Docker Compose

Start the service:

```bash
docker compose up -d
```

Check the running service:

```bash
docker compose ps
```

Stop and remove the service:

```bash
docker compose down
```

## Continuous Integration

This project includes a GitHub Actions workflow that validates the Docker build.

The workflow runs on:

- Pushes to `main`
- Pull requests targeting `main`

It checks that the Docker image can be built successfully:

```bash
docker build -t junior-devops-lab .
```

## Roadmap

- Add Docker Compose - done
- Add a GitHub Actions pipeline - done
- Create Kubernetes manifests
- Study a first Terraform configuration
