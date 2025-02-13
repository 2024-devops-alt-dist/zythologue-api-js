import { Router } from "express";
export const router = Router();

import { beersController } from "../controllers/beers";



/**
 * @swagger
 * /beers:
 *   get:
 *     summary: Pour récupérer toutes les bières et leurs informations principales
 *     tags:
 *       - Beers
 *     responses:
 *       200:
 *         description: Liste des bières récupérée avec succès depuis la base de données.
 *       404:
 *         description: Liste des bières non trouvée.
 */
router.get("/", beersController.getAll);


/**
 * @swagger
 * /beers/{id}:
 *   get:
 *     summary: Pour récupérer toutes les informations d'une bière précise grâce à son identifiant.
 *     tags:
 *       - Beers
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de la bière
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Bière trouvée dans la base de données.
 *       404:
 *         description: Bière introuvable dans la base de données.
 */
router.get("/:id", beersController.getById)

router.get("/:id/brewery", beersController.getByBreweryId)


/**
 * @swagger
 * /beers:
 *   post:
 *     summary: Pour ajouter une nouvelle bière à la base de données
 *     tags:
 *       - Beers
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 name:
 *                 type: string
 *               description:
 *                 type: string
 *               abv:
 *                 type: number
 *               id_brewery:
 *                 type: number
 *               id_category:
 *                 type: number
 *             required:
 *               - name
 *               - description
 *               - abv
 *               - id_brewery
 *               - id_categiry
 *     responses:
 *       201:
 *         description: Bière ajoutée avec succès à la base de données.
 *       400:
 *         description: Données invalides ou manquantes, échec de l'ajout.
 */
router.post("/", beersController.post);


/**
 * @swagger
 * /beers/{id}:
 *   put:
 *     summary: Pour modifier les informations d'une bière grâce à son identifiant.
 *     tags:
 *       - Beers
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: identifiant de la bière
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               description:
 *                 type: string
 *               abv:
 *                 type: number
 *               id_brewery:
 *                 type: number
 *               id_category:
 *                 type: number
 *     responses:
 *       200:
 *         description: Bière modifiée dans la base de données.
 *       404:
 *         description: Bière introuvable dans la base de données.
 *       400:
 *         description: Informations incomplètes.
 */
router.put("/:id", beersController.put);

/**
 * @swagger
 * /beers/{id}:
 *   delete:
 *     summary: Supprimer une bière grâce à son identifiant
 *     tags:
 *       - Beers
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: identifiant de la bière
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Bière supprimée avec succès de la base de données.
 *       404:
 *         description: Bière introuvable dans la base de données.
 */
router.delete("/:id", beersController.delete);