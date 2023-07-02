# Use an official Python runtime as the base image
FROM python:3.11-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Install the dependencies
#RUN apt-get update && apt-get install curl


# Copy the application code to the container
COPY . .

# Set the entry point command to run the application
#CMD ["python", ""]

