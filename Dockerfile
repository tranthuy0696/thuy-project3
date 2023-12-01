FROM python:3.10-slim-buster
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
RUN pip install --upgrade Flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD python app.py
