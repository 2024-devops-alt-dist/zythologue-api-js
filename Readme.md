# API Zythologue

## Résumé

Zythologue est une API permettant aux utilisateurs de découvrir différentes bières, leur brasserie, leurs ingrédients, et même de les enregistrer comme favoris. Codée sur node.js et PostgreSQL, cette application utilise Docker pour permettre un développement facilité sur différents environnements de travail. 

## Installation

Vérifiez sur Docker Desktop que votre projet personnel est bien arrêté, et que les ports 3000 et 5432 sont bien disponibles; 

Clonez le projet avec la commande git clone disponible sur la page gitHub. 

A l'intérieur du dossier du projet, vous pouvez dans votre editeur de code lancer la commande docker-compose up --build. 

En théorie le projet est lancé, et disponible sur localhost:3000.

## Navigation

Via Postman : 

Toutes les requêtes sont disponibles aux url commençant par http://localhost:3000/api/v1

Exemple : http://localhost:3000/api/v1/beers

Via Swagger :

Toute la documentation des routes est disponible dans le navigateur à l'url http://localhost:3000/api/v1/api-docs