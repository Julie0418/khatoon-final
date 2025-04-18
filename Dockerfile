# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install required packages
RUN pip install --no-cache-dir flask 

# Expose port 80
EXPOSE 80

# Run the application
CMD ["python", "app.py"]