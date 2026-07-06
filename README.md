# Junior DevOps Lab

A personal DevOps learning lab built step by step.

The project starts with a static HTML page served by Nginx inside a Docker container.

The goal is to gradually expand it with Docker Compose, GitHub Actions, Kubernetes, and Terraform.

## Project Status

- Static HTML page
- Docker image based on Nginx
- Local container execution

## Technologies

- HTML
- Docker
- Nginx

## How to Run

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

## Roadmap

- Add Docker Compose
- Add a GitHub Actions pipeline
- Create Kubernetes manifests
- Study a first Terraform configuration