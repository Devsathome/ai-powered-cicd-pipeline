# Start FROM a base image that has Python installed
FROM python:3.11-slim
# Set the working directory in the container
WORKDIR /app
# Copy the local file from your computer into the container's working directory
COPY ./src/requirements.txt .
# Install the required Python packages
RUN pip install -r requirements.txt
COPY ./src .
# Expose the port that the Flask app will run on
EXPOSE 5000
# The CMD to run when the container starts
CMD ["python", "app.py"]

# Why are we doing this? This file is the automation blueprint.
# Anyone, on any machine with Docker, can use this file to create an identical,
# runnable package of our app. This eliminates the classic "it works on my machine!" problem.