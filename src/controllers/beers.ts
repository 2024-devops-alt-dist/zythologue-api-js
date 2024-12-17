import { Request, Response } from "express";
import { pool } from "../db/config";
import { Beer } from "../models/beers";
import dotenv from "dotenv";
dotenv.config();

export const beersController = {
    getAll:  async  (req: Request, res: Response) => {
        try {
            const data = await pool.query('SELECT * FROM beer');
            res.status(200).json({data : data.rows});
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
    getById: async (req: Request, res: Response): Promise<void> => {
        const id = parseInt(req.params.id, 10);
        
        if (isNaN(id)) {
            res.status(400).json({ message: 'ID invalide' });
            return
         }
        try {
            const result = await pool.query("SELECT * FROM beer WHERE id = $1", [id]);

            if (result.rows.length === 0) {
                res.status(404).json({ error: `Bière avec l'ID ${id} introuvable` });
                return;
            }

            res.status(200).json({ data: result.rows[0] });
        } catch (error) {
            console.error(`Erreur lors de la récupération de la bière d'id ${id}.`, error);
            res.status(500).json({ error: "Erreur interne du serveur" });
        }
    },
    post: async (req: Request, res: Response): Promise<void> => {
           
            const { name,  description, abv, id_brewery, id_category }: Beer = req.body;
        
            if ( !name || !description || !abv || !id_brewery || !id_category  ) {
                res.status(400).json({ error: "Tous les champs sont requis." });
                return;
            }
        
            try {
                const result = await pool.query(
                    `INSERT INTO beer (name, description, abv, id_brewery, id_category)
                    VALUES ($1, $2, $3, $4, $5)
                    RETURNING *`, 
                    [name, description, abv, id_brewery, id_category]
                );
        
                res.status(201).json({ data: result.rows[0] });
            } catch (error) {
                console.error("Erreur lors de la création de la bière.", error);
                res.status(500).json({ error: "Erreur interne du serveur" });
            }
        },
     put: async (req: Request, res: Response): Promise<void> => {
            const id = parseInt(req.params.id, 10);
            
            if (isNaN(id)) {
                res.status(400).json({ message: 'ID invalide' });
                return
             }        
             
            let { name,  description, abv, id_brewery, id_category }: Partial<Beer> = req.body;
            
            try {
                const breweryExists = await pool.query("SELECT * FROM beer WHERE id = $1", [id]);
                if (breweryExists.rows.length === 0) {
                    res.status(404).json({ error: `Bière avec l'ID ${id} introuvable` });
                    return;
                }
        
                const result = await pool.query(
                    `UPDATE beer 
                    SET 
                        name = COALESCE($1, name), 
                        description = COALESCE($2, description),
                        abv = COALESCE($3, abv),
                        id_brewery = COALESCE($4, id_brewery), 
                        id_category = COALESCE($5, id_category)
                    WHERE id = $6
                    RETURNING *`,
                    [name,  description, abv, id_brewery, id_category , id]
                );
        
                res.status(200).json({ data: result.rows[0] });
            } catch (error) {
                console.error(`Erreur lors de la mise à jour de la bière ${id}.`, error);
                res.status(500).json({ error: "Erreur interne du serveur" });
            }
        },
    delete: async (req: Request, res: Response) => {
        const id = parseInt(req.params.id, 10);

        if (isNaN(id)) {
           
          res.status(400).json({ message: 'ID invalide' });
          return
        }
        try {
            const result = pool.query('DELETE FROM beer WHERE id = $1', [id]);
            res.status(200).json({ data: "suppression de la bière !" });
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
};