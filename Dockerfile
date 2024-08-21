# Use a base image with Python
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy only the necessary files first
COPY . /app

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Expose port 80
EXPOSE 80

# Define the command to run the app
CMD ["python", "app.py"]

