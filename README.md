# Junior DevOps Lab

[![CI](https://github.com/wizzarella/junior-devops-lab/actions/workflows/docker-build.yml/badge.svg)](https://github.com/wizzarella/junior-devops-lab/actions/workflows/docker-build.yml)

A personal DevOps learning lab built step by step.

The project starts with a static HTML page served by Nginx inside a Docker container.

The goal is to gradually expand it with Docker Compose, GitHub Actions, Kubernetes, and Terraform.

## Project Status

- Static HTML page
- Docker image based on Nginx
- Local container execution
- Docker Compose configuration
- GitHub Actions workflow for Docker build validation
- Basic Kubernetes manifests
- Basic Terraform local provider example

## Technologies

- HTML
- Docker
- Docker Compose
- Nginx
- GitHub Actions
- Kubernetes
- Terraform

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

## Kubernetes Manifests

The `k8s/` directory contains basic Kubernetes manifests:

- `deployment.yml` defines the web application pod managed by a Deployment
- `service.yml` exposes the application through a NodePort service

Validate the manifests when a local Kubernetes cluster is running:

```bash
kubectl apply --dry-run=client -f k8s/
```

## Terraform

The `terraform/` directory contains a first Terraform example using the `local` provider.

It creates a local text file for learning purposes and does not provision cloud resources.

Useful commands:

```bash
cd terraform
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

## Roadmap

- Add Docker Compose - done
- Add a GitHub Actions pipeline - done
- Create basic Kubernetes manifests - done
- Study a first Terraform configuration - done
- Run the Kubernetes manifests on a local cluster - next
- Publish the Docker image to a container registry - next
- Expand Terraform with a real infrastructure use case - next

## What I Learned

Through this project, I practiced:

- Creating a Git repository and working with branches and pull requests
- Building a Docker image for a static Nginx website
- Running the project locally with Docker Compose
- Adding GitHub Actions checks for Docker and Terraform
- Writing basic Kubernetes manifests for a web application
- Using Terraform with the local provider
- Keeping generated files, state files, and local artifacts out of version control

## Current Result

The project now includes a small static DevOps lab dashboard served with Nginx in Docker.

It can be run locally with:

```bash
docker compose up -d --build
```

Then opened at:

```text
http://localhost:8080
```
