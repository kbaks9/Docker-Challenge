# Docker-Challenge: Flask + Redis
This is a simple Flask web application that tracks and displays visitor counts using Redis. 
It comes fully containerized with Docker for easy setup and deployment. 
The homepage provides a welcome message, and a separate page shows the current visitor count.  

![Visitor count](https://github.com/user-attachments/assets/d96a6ab5-aaa4-45e1-9d15-f4c6ec769a13)

## Features
- Homepage (`/`) with a welcome message.  
- Visitor count page (`/count`) that increments using Redis.  
- Custom CSS styling for a clean and simple layout.  
- Fully containerized with Docker for easy setup and deployment.  
- Nginx reverse proxy planned (not added yet) to serve the app and static files efficiently.  

## How to Run
Build the Docker image:
docker build -t flask-app .

Run the container:
docker run -p 5002:5002 flask-app

Open your browser at:
http://localhost:5002/
Visit `/count` to see the visitor count incremented on each visit.

## How to Stop & Remove
Stop the container (replace <container_id> with your container ID):
docker stop <container_id>

Remove the container:
docker rm <container_id>

Remove the image (optional):
docker rmi flask-app
