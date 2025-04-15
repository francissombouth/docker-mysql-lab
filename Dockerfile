FROM mysql:8

# Définir uniquement les variables non sensibles par défaut
ENV MYSQL_DATABASE=formation

# Copie du script d'initialisation
COPY init.sql /docker-entrypoint-initdb.d/

# Configuration de sécurité supplémentaire
RUN chmod 644 /docker-entrypoint-initdb.d/init.sql

# Exposition du port MySQL
EXPOSE 3306