FROM denoland/deno:latest

# Create working directory
WORKDIR /app

COPY deno.json .
COPY a/ a/

# We fail here
RUN deno install
