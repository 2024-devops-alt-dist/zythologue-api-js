import { Request, Response } from "express";

export const beersController = {
    get: (req: Request, res: Response) => {
        try {
            // récupérer la co de la BDD
            // const data = select * from beers
            // const data = [];
            res.status(200).json({ data: "ici toutes les data" });
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
    post: (req: Request, res: Response) => {
        res.status(201).json({ data: "ajout de la bière !" });
    },
    put: (req: Request, res: Response) => {
        res.status(200).json({ data: "modification de la bière !" });
    },
    delete: (req: Request, res: Response) => {
        res.status(200).json({ data: "suppression de la bière !" });
    },
};