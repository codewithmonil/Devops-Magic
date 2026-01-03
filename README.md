# Devops Magic


# Let's SEE Devops Magic!




A complete end-to-end CI/CD pipeline demonstrating modern DevOps practices with automated testing, Docker containerization, and Kubernetes deployment. Built to showcase the magic of DevOps automation from code commit to production deployment.

---

## 🚀 What This Project Does

This project demonstrates a **production-ready CI/CD pipeline** where a simple code change triggers automated testing, builds a Docker image, pushes it to Docker Hub, and deploys it to a Kubernetes cluster—all with minimal manual intervention.


---

## 🎯 Problem Statement

Traditional deployment processes are:
- ❌ Manual and error-prone
- ❌ Time-consuming and repetitive
- ❌ Difficult to scale across teams
- ❌ Lack consistency and traceability

**This project solves that by:**
- ✅ Automating the entire deployment pipeline
- ✅ Ensuring consistent, repeatable deployments
- ✅ Providing visibility into every step
- ✅ Demonstrating industry-standard DevOps practices

---

## ✨ Features

- **Automated Testing** - Pytest runs on every commit
- **Docker Containerization** - Builds for optimization
- **CI/CD Pipeline** - GitHub Actions workflow with multiple jobs
- **Kubernetes Deployment** - Automated deployment with health checks
- **ConfigMap Management** - Environment-based configuration
- **Multi-Replica Setup** - High availability with 2 pod replicas
- **Beautiful Deployment Script** - Colored PowerShell script for local demos
- **Port Forwarding** - Easy local access to deployed applications

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|-----------|
| **Application** | Python 3.11, Flask 3.0.0 |
| **Containerization** | Docker, Multi-stage Builds |
| **Container Registry** | Docker Hub |
| **CI/CD** | GitHub Actions |
| **Orchestration** | Kubernetes (kind v1.27.3) |
| **Infrastructure** | kind (Kubernetes in Docker) |

---

## 📁 Project Structure
```
flask-devops-demo/
├── .github/
│   └── workflows/
│       └── ci-cd.yml           # GitHub Actions CI/CD pipeline
├── k8s/
│   ├── deployment.yaml         # Kubernetes Deployment manifest
│   ├── service.yaml            # Kubernetes Service (NodePort)
│   └── configmap.yaml          # Application configuration
├── app.py                      # Flask application
├── test_app.py                 # Pytest unit tests
├── Dockerfile                  # Multi-stage Docker build
├── requirements.txt            # Python dependencies
├── .dockerignore              # Docker build exclusions
├── kind-config.yaml           # kind cluster configuration
├── deploy.ps1                 # Automated deployment script
└── README.md                  # Project documentation
```


