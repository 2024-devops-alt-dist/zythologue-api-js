import { Router } from "express";
export const router = Router();

import { beersController } from "../controllers/beers";

router.get("/", beersController.get);
router.post("/", beersController.post);
router.put("/", beersController.put);
router.delete("/:id", beersController.delete);