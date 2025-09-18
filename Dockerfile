# Use the official Python 3.9 slim image as a parent image
FROM python:3.9-slim
		
# Set the working directory in the container
WORKDIR /app
		
# Copy the requirements file into the container at /app
COPY requirements.txt .
		
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
		
# Copy the rest of the application's code into the container at /app
COPY . .
		
# Define the command to run the application using a production server
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]
