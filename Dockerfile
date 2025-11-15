# Use an official Python runtime as the base image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (adjust if needed)
EXPOSE 5000

# Command to run your app
CMD ["python", "app.py"]
