# Use an official Python runtime as a parent image


# Set the working directory to /app


# Copy the current directory contents into the container at /app

# Install any needed packages specified in requirements.txt


# Make port 80 available to the world outside this container

# Define environment variable

# Run app.py when the container launcher
FROM python:3.8-slim
# Createapp directory
WORKDIR /app
# Ins tallapp dependencies
COPY requirements.txt  ./
RUN pip install -r requirements.txt
# Bundleapp source
COPY . .
EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
