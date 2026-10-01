#	Noah van der Woude
#	499193

#	Nginx voor webserver
FROM nginx:alpine

#	Selecteer workdir
WORKDIR /usr/share/nginx/html

# Command uitvoeren tijdens het bouwen van de image, die de standaard Nginx webpagina bewerkt
RUN echo "<h2>Nginx webserver via Docker container.</h2>" > index.html

# Poort
EXPOSE 80

# Commands die worden uitgevoerd wanneer de container start:
# Deze zorgen ervoor dat nginx op de voorgrond blijft draaien. Als dit niet gedaan wordt, stopt de container
CMD ["nginx", "-g", "daemon off;"]