
---

# 🚀 Deployment of Ruby based Web application  

[![Docker](https://img.shields.io/badge/Docker-Deployment-blue?logo=docker)](https://www.docker.com/)  
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Deployment-blue?logo=kubernetes)](https://kubernetes.io/)  
[![Ruby on Rails](https://img.shields.io/badge/Rails-7.0-red?logo=ruby-on-rails)](https://rubyonrails.org/)  

---

## 🙌 Acknowledgment  
In this project a Ruby web application **The Budget-App**, created by [@evans22j](https://github.com/evans22j).  
Thank you [@evans22j](https://github.com/evans22j) for open-sourcing this awesome application!  

---

## 📂 Directory Structure  

```
.
├── Budget-App     # Ruby-based web app
├── devops         # Dockerfile, docker-compose, and related backups
│   └── CICD       # CI/CD tool deployment files for k8s

```


---

## 🐳 Deploying with Docker Compose  

### 1. Install Docker  
If Docker is not installed, run:  
```bash
bash -x ./devops/docker_install
```


### 2. Clone Repository

```bash
git clone https://github.com/sachin857/Rails-docker.git && cd Rails-docker
```


### 3. Build Docker Image (if not pulling from DockerHub)

```bash
docker build -t sachin857/assessment:v1 .
```


### 4. Start Application

```bash
docker-compose up -d
```


### Clean Up Deployment

```bash
docker-compose down
```


### To check if application is running:
# Note!
```bash 
The docker image is not well optimize at this moment. Issue is it is building artifacts post deployment which should not happen. I will work on it.
For now wait for 4-5 minute and then run below command into the browser.
```

```bash
http://localhost:3000
```


---

## ☸️ Deploying on Kubernetes

For Kubernetes deployment, use the dedicated repo:

👉 [@sachin857/Rails-kube](https://github.com/sachin857/Rails-kube)

```bash
git clone https://github.com/sachin857/Rails-kube.git && cd Rails-kube
```

---

## 📬 Connect With Me

* 💼 [LinkedIn @uikeysa06](https://www.linkedin.com/in/uikeysa06/)
* 🐦 [X (Twitter) @imSachinUK](https://x.com/imSachinUK)
* 📧 Email: **[sau.freelancer06@gmail.com](mailto:sau.freelancer06@gmail.com)**
* 💻 [GitHub @sachin857](https://github.com/sachin857)

---
