# Docker Tutorial Notes

## **1. Introduction to Docker**

### **What is Docker?**
- Docker is an open-source platform that automates the deployment of applications inside lightweight, portable containers.
- Containers ensure consistency across multiple environments (development, testing, production).

### **Key Features:**
- **Portability**: Works on any system supporting Docker.
- **Efficiency**: Lightweight compared to virtual machines.
- **Isolation**: Applications run in isolated environments.
- **Scalability**: Easily scalable using container orchestration tools.

---

## **2. Core Docker Concepts**

### **1. Images:**
- Read-only templates used to create containers.
- Stored in repositories like Docker Hub.

### **2. Containers:**
- Running instances of images.
- Can be started, stopped, and removed as needed.

### **3. Dockerfile:**
- A script containing instructions to build Docker images.
- Example:
  ```Dockerfile
  FROM ubuntu:latest
  RUN apt-get update && apt-get install -y nginx
  CMD ["nginx", "-g", "daemon off;"]
  ```

### **4. Docker Hub:**
- A cloud-based repository for Docker images.
- Default storage for pulling and pushing images.

---

## **3. Installation**

### **Prerequisites:**
- Compatible OS: Windows, macOS, or Linux.
- Install Docker Desktop or Docker Engine.

### **Basic Setup:**
1. Install Docker from [Docker's official website](https://www.docker.com/).
2. Verify installation: `docker --version`.

---

## **4. Common Docker Commands**

### **Images:**
- `docker images`: List all local images.
- `docker pull <image>`: Download an image.
- `docker build -t <image-name> .`: Build an image from a Dockerfile.

### **Containers:**
- `docker ps`: List running containers.
- `docker ps -a`: List all containers (including stopped ones).
- `docker run <image>`: Run a container from an image.
- `docker stop <container-id>`: Stop a running container.
- `docker rm <container-id>`: Remove a container.

### **Other Useful Commands:**
- `docker logs <container-id>`: View container logs.
- `docker exec -it <container-id> bash`: Access a container shell.

---

## **5. Dockerfile Basics**

### **Structure:**
1. **FROM**: Base image.
2. **RUN**: Commands to execute during image build.
3. **CMD** or **ENTRYPOINT**: Commands executed when the container starts.

### **Example:**
```Dockerfile
FROM python:3.9
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
```

---

## **6. Docker Networking**

### **Network Modes:**
- **Bridge**: Default mode; isolates containers.
- **Host**: Shares the host network stack.
- **None**: No networking.

### **Commands:**
- `docker network ls`: List all networks.
- `docker network create <network-name>`: Create a new network.
- `docker network connect <network-name> <container>`: Connect a container to a network.

---

## **7. Docker Compose**

### **What is Docker Compose?**
- Tool for defining and running multi-container applications.
- Uses a `docker-compose.yml` file.

### **Example `docker-compose.yml`:**
```yaml
version: "3"
services:
  web:
    image: nginx
    ports:
      - "8080:80"
  app:
    build: .
    volumes:
      - ".:/app"
    ports:
      - "5000:5000"
```

### **Commands:**
- `docker-compose up`: Start services.
- `docker-compose down`: Stop and remove services.

---

## **8. Persistent Storage**

### **Volumes:**
- Used for data persistence.
- Created using `docker volume create <volume-name>`.

### **Bind Mounts:**
- Maps a host directory to a container directory.
- Example: `docker run -v /host/path:/container/path <image>`.

---

## **9. Best Practices**

- Keep images small by minimizing layers in Dockerfiles.
- Use `.dockerignore` to exclude unnecessary files.
- Avoid running applications as the root user inside containers.
- Regularly clean up unused images and containers.

---

Connect for more information...!
