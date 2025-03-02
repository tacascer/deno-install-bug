FROM denoland/deno:latest

# Create working directory
WORKDIR /app

COPY deno.json .
COPY a/ a/

### Option 1: Running from the root
# We fail here
RUN deno install

### Option 2:  Running from the subdirectory
WORKDIR /app/a 
# We fail here
RUN deno install
