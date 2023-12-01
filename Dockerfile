FROM arm64v8/alpine:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .
# Install Python 3 and pip
RUN apk add --no-cache python3 py3-pip
# Install any needed packages specified in requirements.txt
# Install your Python dependencies
RUN pip3 install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Specify the command to run your Python application
CMD ["python3", "app.py"]

