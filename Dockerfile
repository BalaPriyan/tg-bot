FROM anasty17/mltb:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the run script into the container
COPY run.sh /usr/src/app/run.sh
RUN chmod +x /usr/src/app/run.sh

# Specify the entrypoint
ENTRYPOINT ["/usr/src/app/run.sh"]
