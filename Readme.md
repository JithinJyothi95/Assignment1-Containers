# Assignment 1 – Dockerized Flask App

This project is a containerized Python Flask application that runs in a Docker container and displays a simple welcome message on port 5000.

## Project Structure

```
ASSIGNMENT1-CNO/
├── app.py              # Flask application
├── boot.sh             # Startup script for container
├── requirements.txt    # Python dependencies
├── Dockerfile          # Docker build instructions
├── .dockerignore       # Excludes unnecessary files from Docker context
└── screenshots/        # Contains required assignment screenshots
```

## Docker Build Instructions

1. **Build the Docker image**
   ```bash
   docker build -t flask-app:v1 .
   ```

2. **Run the Docker container**
   ```bash
   docker run -d -p 5000:5000 --name my-flask-app -v flask-data:/data flask-app:v1
   ```

3. **Access the application**
   - Open your browser and go to: [http://localhost:5000](http://localhost:5000)

4. **Stopping & Cleaning Up the Container**
- To stop the running container:
```bash
docker stop my-flask-app
```
- To remove the container:
```bash
docker rm my-flask-app
```

## Features & Best Practices Used

- Based on official `python:3.11-slim` image
- Uses `gunicorn` as a production-ready server
- Runs the app as a non-root user (`flaskuser`)
- Uses Docker volumes (`flask-data`) for persistent storage
- Includes a `.dockerignore` file to keep image clean
- Version-tagged Docker image (`v1` instead of `latest`)

## Screenshots

| Description                  | Screenshot                          |
|------------------------------|--------------------------------------|
| Docker build output (CLI)    | ![](screenshots/docker%20build.png)   |
| Docker build details (Info)  | ![](screenshots/docker%20build%20Info.png) |
| Dockerfile source view       | ![](screenshots/docker%20build%20source.png) |
| Container logs               | ![](screenshots/DockerFile%20logs.png) |
| `docker ps` terminal output  | ![](screenshots/Docker%20ps.png)      |
| GUI container running view   | ![](screenshots/container%20running.png) |
| App running in browser       | ![](screenshots/Server%20Up.png)      |

## Author
- Jithin Jyothi
