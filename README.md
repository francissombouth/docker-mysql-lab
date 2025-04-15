Structure du projet 
docker-mysql-lab/
├── Dockerfile     # Configuration du conteneur MySQL
├── .env           # Variables d'environnement (non versionné)
├── init.sql       # Script d'initialisation de la base de données
└── README.md      # Documentation du projet

### 1. Configuration

Créez un fichier `.env` à la racine du projet avec le contenu suivant:
MYSQL_ROOT_PASSWORD=pwd
MYSQL_DATABASE=formation

### 2. Construction de l'image

```bash
docker build -t mysql-lab .
```

### 3. Construction de l'image

```bash
docker run -d --name mysql-container \
  --env-file .env \
  -p 3307:3306 \
  mysql-lab
```

### 4. Connexion à MySQL

```bash
docker exec -it mysql-container mysql -uroot -p
```
### 5. Vérification de la base et de la table
```sql
SHOW DATABASES;
USE formation;
```

### 5.Arrêt et nettoyage

Pour arrêter le conteneur:
```bash
docker stop mysql-container
```
Pour supprimer le conteneur:
```bash
docker rm mysql-container
```
Pour supprimer l'image:
```bash
docker rmi mysql-lab
```
