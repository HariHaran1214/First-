# Base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port your Flask app will run on
EXPOSE 5000

# Set the environment variable
ENV FLASK_APP=app.py

# Start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
