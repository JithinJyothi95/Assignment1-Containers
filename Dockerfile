FROM python:3.11-slim

# Prevent Python from writing .pyc files & enable unbuffered logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create non-root user
RUN addgroup --system flaskgroup && adduser --system --ingroup flaskgroup flaskuser

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

# Set permission before switching user
RUN chmod +x boot.sh && chown -R flaskuser:flaskgroup /app

# Switch to non-root user
USER flaskuser

# Expose Flask app port
EXPOSE 5000

# Run app
ENTRYPOINT ["./boot.sh"]
