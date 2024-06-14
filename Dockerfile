FROM python:3.9

WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade pip
RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD gunicorn --bind :8080 --workers 1 main:app