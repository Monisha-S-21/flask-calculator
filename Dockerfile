# FROM python:3.9
# WORKDIR /app
# COPY . /app
# RUN pip install -r requirements.txt
# EXPOSE 5000
# CMD ["python", "app/calculator.py"]

# Use Python 3.9 as base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy requirements file first (to leverage Docker cache)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

EXPOSE 5000
CMD ["python", "app/calculator.py"]
