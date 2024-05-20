# Use the lightweight Python image
FROM python:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY app.py .

# Run the Python script when the container starts
CMD ["python", "app.py"]

