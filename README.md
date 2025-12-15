# Docker-Challenge: Flask + Redis

This project is a simple Flask web application that tracks and displays visitor counts using Redis as a backend datastore.
The application is fully containerized using Docker and Docker Compose for easy setup, consistent environments, and reproducible builds.

The homepage displays a welcome message, while a separate endpoint tracks and increments the number of visits.

Visitor count screenshot:
![Visitor count](https://github.com/user-attachments/assets/1b5ce9a5-0e0e-4aaf-8d10-c857adbede9b)


--------------------------------------------------

### FEATURES:

- Homepage (/) with a welcome message
- Visitor count endpoint (/count) backed by Redis
- Persistent Redis storage using Docker volumes
- Custom CSS styling
- Multi-container setup using Docker Compose
- Environment variables for service configuration
- Scalable architecture (load balancing via Nginx planned)

--------------------------------------------------

### HOW TO RUN:

Clone the repository and run:

```docker compose up --build```

Once the containers are running, open your browser:

Application: http://localhost:5002
Visitor counter: http://localhost:5002/count

--------------------------------------------------

### SCALING THE WEB SERVICE:

The web service can be scaled horizontally using Docker Compose:

docker compose up --scale web=3

Note:
When scaling the Flask service, a reverse proxy such as Nginx is required to load-balance traffic across multiple containers.
Nginx integration is planned for a future update.

--------------------------------------------------

### ENVIRONMENT VARIABLES:

The application uses the following environment variables:

- REDIS_HOST – Redis service hostname (default: redis)
- REDIS_PORT – Redis port (default: 6379)

These are configured automatically via docker-compose.yaml.

--------------------------------------------------

### STOPPING THE APPLICATION:

To stop and remove all containers, networks, and volumes:

```docker compose down```

--------------------------------------------------

### PROJECT STRUCTURE:

```
├── app.py
├── Dockerfile
├── docker-compose.yaml
├── static/
│   └── style.css
├── templates/
│   └── home.html
│   └── count.html
├── images/
│   └── counter.gif
└── README.md
```
--------------------------------------------------

### FUTURE IMPROVEMENTS:

- Add Nginx reverse proxy for load balancing
- Replace Flask development server with Gunicorn
- Improve environment configuration and secrets handling
- Add health checks and monitoring

--------------------------------------------------

LICENSE

This project is for learning and demonstration purposes.
