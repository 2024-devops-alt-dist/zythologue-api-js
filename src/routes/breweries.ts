import { Router } from "express";
export const router = Router();

import { breweriesController } from "../controllers/breweries";

/**
 * @swagger
 * /breweries:
 *   get:
 *     summary: Pour récupérer toutes les brasseries et leurs informations principales
 *     tags:
 *       - Breweries
 *     responses:
 *       200:
 *         description: Liste des brasseries récupérée avec succès depuis la base de données.
 *       404:
 *         description: Liste des brasseries non trouvée.
 */
router.get("/", breweriesController.getAll);

/**
 * @swagger
 * /breweries/{id}:
 *   get:
 *     summary: Pour récupérer toutes les informations d'une brasserie précise grâce à son identifiant.
 *     tags:
 *       - Breweries
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID de la brasserie
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: brasserie trouvée dans la base de données.
 *       404:
 *         description: brasserie introuvable dans la base de données.
 */
router.get("/:id", breweriesController.getById);

/**
 * @swagger
 * /breweries:
 *   post:
 *     summary: Pour ajouter une nouvelle brasserie à la base de données
 *     tags:
 *       - Breweries
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
 *               country:
 *                 type: string
 *             required:
 *               - name
 *               - country
 *     responses:
 *       201:
 *         description: brasserie ajoutée avec succès à la base de données.
 *       400:
 *         description: Données invalides ou manquantes, échec de l'ajout.
 */
router.post("/", breweriesController.post);


/**
 * @swagger
 * /breweries/{id}:
 *   put:
 *     summary: Pour modifier les informations d'une brasserie grâce à son identifiant.
 *     tags:
 *       - Breweries
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: identifiant de la brasserie
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
 *               country:
 *                 type: string
 *     responses:
 *       200:
 *         description: brasserie modifiée dans la base de données.
 *       404:
 *         description: brasserie introuvable dans la base de données.
 *       400:
 *         description: Informations incomplètes.
 */
router.put("/:id", breweriesController.put);

/**
 * @swagger
 * /breweries/{id}:
 *   delete:
 *     summary: Supprimer une brasserie grâce à son identifiant
 *     tags:
 *       - Breweries
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: identifiant de la brasserie
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: brasserie supprimée avec succès de la base de données.
 *       404:
 *         description: brasserie introuvable dans la base de données.
 */
router.delete("/:id", breweriesController.delete);