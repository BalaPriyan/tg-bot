FROM anasty17/mltb:latest

# Set the working directory
WORKDIR /app

# Copy the run script into the container
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Specify the entrypoint
ENTRYPOINT ["/app/run.sh"]
