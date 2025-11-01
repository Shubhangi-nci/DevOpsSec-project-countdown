# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5173 for the  application
EXPOSE 5173

# Set default command
CMD ["python", "app.py"]


