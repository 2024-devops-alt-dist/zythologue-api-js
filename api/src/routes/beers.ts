import { Router } from "express";
export const router = Router();

import { beersController } from "../controllers/beers";

/**
 * @swagger
 * /beers:
 *   get:
 *     summary: Récupérer toutes les bières et les informations principales
 *     tags:
 *       - Beers
 *     responses:
 *       200:
 *         description: Liste des bières récupérée avec succès.
 *       404:
 *         description: Liste des bières non trouvée.
 */
router.get("/", beersController.getAll);
router.get("/:id", beersController.getById)
router.post("/", beersController.post);
router.put("/:id", beersController.put);
router.delete("/:id", beersController.delete);