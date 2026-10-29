# Use Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy dependency file first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY . .

# Optional: Expose port if using Flask/FastAPI
EXPOSE 8000

# Run application
CMD ["python", "app.py"]