# Use Python 3.6 or later as a base image
FROM python:3.7
# set working directory
WORKDIR /duo-task
# Copy contents into image
COPY app.py .
COPY requirements.txt .
# Install pip dependencies from requirements
RUN pip3 install Flask
# Set YOUR_NAME environment variable
ENV YOUR_NAME = "Nathan"
# Expose the correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
