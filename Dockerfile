# Use an official Python runtime as a parent image
FROM continuumio/anaconda3

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.disable_check_xsrf=True", "--NotebookApp.token=''", "--NotebookApp.password=''", "/app"]
