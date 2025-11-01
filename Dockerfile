# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Expose port 5173 for the  application
EXPOSE 5173

# Set default command
CMD ["python", "app.py"]


