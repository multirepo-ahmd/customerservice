# Use the official Python image
FROM python:3.9-slim

USER root

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Command to run the application
CMD ["python", "app.py"]

# Expose the port the application runs on
EXPOSE 8080
