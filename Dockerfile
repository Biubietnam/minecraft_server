# Use OpenJDK 21 as base image
FROM eclipse-temurin:21-jdk

# Set the working directory
WORKDIR /minecraft

# Copy everything except ignored files
COPY . .

# Expose Minecraft ports
EXPOSE 25565
# EXPOSE 25575
# EXPOSE 19132/udp

# Run the Minecraft server
CMD ["java", "-Xmx20000M", "-Xms8024M", "-jar", "server.jar", "nogui"]
