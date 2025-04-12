
# DevOps Project: CI/CD with Docker and EC2

This project demonstrates how to set up a simple DevOps pipeline using **Git**, **Docker**, and an **AWS EC2** instance. It follows Git best practices including branching, tagging, and proper version control documentation.

---

## 📦 Project Structure

```
.
├── Dockerfile
├── app/               # Node.js application code
│   ├── index.js
│   └── package.json
├── .gitignore
├── README.md
└── package-lock.json
```

---

## 🚀 Project Objectives

- Set up a version-controlled DevOps project.
- Build and deploy a Dockerized app on an EC2 instance.
- Use GitHub workflows and best practices (branches, PRs, commits).
- Automate as much as possible.

---

## 🛠 Tools & Technologies

- Git & GitHub
- Docker
- AWS EC2 (Ubuntu)
- Node.js
- Linux Shell
- Markdown

---

## 🌱 Git Workflow

1. **Initialize Git Repo**
   ```bash
   git init
   git remote add origin https://github.com/Santhoshreddy1818/devops-project.git
   ```

2. **Branching Strategy**
   - `main`: stable production-ready code.
   - `dev`: integration and staging.
   - `feature/*`: individual feature branches.

3. **Pull Request Flow**
   - Create a `feature/login`, `feature/dockerize`, etc.
   - Merge via PR to `dev`, then to `main`.

4. **Tags**
   - Use semantic versioning for releases.
     ```bash
     git tag -a v1.0.0 -m "Initial release"
     git push origin v1.0.0
     ```

---

## 🐳 Docker Instructions

1. **Build Docker Image**
   ```bash
   docker build -t myapp .
   ```

2. **Run Docker Container**
   ```bash
   docker run -d -p 3000:3000 myapp
   ```

3. **Access App**
   ```
   http://<your-ec2-public-ip>:3000
   ```

---

## ☁️ EC2 Deployment Steps

1. Launch Ubuntu EC2 instance from AWS console.
2. Connect to instance:
   ```bash
   ssh -i <your-key.pem> ubuntu@<ec2-public-ip>
   ```

3. Install Docker:
   ```bash
   sudo apt update
   sudo apt install docker.io -y
   sudo systemctl start docker
   sudo systemctl enable docker
   ```

4. Clone your GitHub repo (HTTPS method):
   ```bash
   git clone https://github.com/Santhoshreddy1818/devops-project.git
   cd devops-project
   ```

5. Build and run your app with Docker:
   ```bash
   docker build -t myapp .
   docker run -d -p 3000:3000 myapp
   ```

---

## 🧾 .gitignore Highlights

```
node_modules/
.env
*.log
*.pem
.DS_Store
```

---

## 📘 Documentation

- Each task should be logged in a `task-log.md` or included in PR descriptions.
- Tags are used for marking version releases.
- Readable commit messages and detailed README provided.

---

## ✅ Outcome

By completing this project, you will have learned:

- How to follow Git best practices in a real-world DevOps scenario.
- How to containerize and deploy an application using Docker.
- How to work with branches, pull requests, and tags.
- How to manually deploy a Docker app on an EC2 instance.

---

## 👨‍💻 Author

**Santhosh Reddy**  
GitHub: [Santhoshreddy1818](https://github.com/Santhoshreddy1818)
