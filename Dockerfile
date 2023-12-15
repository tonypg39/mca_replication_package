# Use Ubuntu 20.04 LTS as the base image
FROM tonypg39/rac-sim:latest

# Set non-interactive installation to avoid prompts hanging the build
ARG DEBIAN_FRONTEND=noninteractive

# Update the package repository and install updates
RUN apt-get update && apt-get upgrade -y

# Install any necessary dependencies or tools you need
# For example, if you need Git and Vim, you would add:
# RUN apt-get install -y git vim

# Set any environment variable you might need
# ENV MY_ENVIRONMENT_VARIABLE=value

# Copy files from your host to your Docker image
# COPY ./source_code /app

# Set the working directory inside the container
# WORKDIR /app

# Run any command you need to initialize
# RUN some_command_to_run

# Command to run when the container starts
# CMD ["command_to_run"]