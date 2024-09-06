# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . /app/

# Expose port 8000 for the Django app
EXPOSE 8000

# Run the Django development server (you can change this in production)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
