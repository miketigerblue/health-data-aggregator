# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the docker
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable for further customization
ENV NAME HealthDataAggregator

# Command to run when the container launches
CMD ["python", "health_data_aggregator.py"]
