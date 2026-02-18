FROM wiremock/wiremock:latest

# Copy mappings into the Wiremock image
COPY mappings/ /home/wiremock/mappings/
COPY __files/ /home/wiremock/__files/

# Expose the default Wiremock port
EXPOSE 8080

# Wiremock runs by default on startup
