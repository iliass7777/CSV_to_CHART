# CSV_to_CHART — Backend Docker setup

Fichiers ajoutés/édités:

- `dockerfile` — Dockerfile pour l'image du backend (utilise Node 18 Alpine).
- `docker-compose.yml` — compose pour construire et démarrer le service backend.

Usage rapide:

1) Construire l'image Docker:

   docker build -t csv_to_chart_back:latest .

2) Démarrer avec Docker (sans compose):

   docker run -p 3000:3000 --rm csv_to_chart_back:latest

3) Démarrer avec Docker Compose:

   docker-compose up --build -d

Le serveur écoute par défaut sur le port 3000. Points utiles:

- Route santé: `GET /` -> retourne un JSON basique.
- Pour développement: décommentez la section `volumes` dans `docker-compose.yml` pour monter `./back` dans le conteneur (vous pourrez éditer localement).

Si vous n'avez pas Docker installé, vous pouvez tester localement:

```
cd back
npm install
npm start
```

---
Si vous voulez que je renomme `dockerfile` en `Dockerfile` (convention), ou que j'ajoute un `Dockerfile` séparé dans `back/`, dites-le et je le ferai.
