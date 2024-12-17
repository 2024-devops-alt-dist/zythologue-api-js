import { Request, Response } from "express";
import { Brewery } from "../models/breweries";
import { pool } from "../db/config";
import dotenv from "dotenv";
dotenv.config();

export const breweriesController = {
    getAll:  async  (req: Request, res: Response): Promise<void> => {
        try {
            const data = await pool.query('SELECT * FROM brewery');
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
            const result = await pool.query("SELECT * FROM brewery WHERE id = $1", [id]);

            if (result.rows.length === 0) {
                res.status(404).json({ error: `Brasserie avec l'ID ${id} introuvable` });
                return;
            }

            res.status(200).json({ data: result.rows[0] });
        } catch (error) {
            console.error(`Erreur lors de la récupération de la brasserie d'id ${id}.`, error);
            res.status(500).json({ error: "Erreur interne du serveur" });
        }
    },
    post: async (req: Request, res: Response): Promise<void> => {
       
        const { name,  country }: Brewery = req.body;
    
        if ( !name || !country ) {
            res.status(400).json({ error: "Tous les champs sont requis." });
            return;
        }
    
        try {
            const result = await pool.query(
                `INSERT INTO brewery (name, country)
                VALUES ($1, $2)
                RETURNING *`, 
                [name, country]
            );
    
            res.status(201).json({ brewery: result.rows[0] });
        } catch (error) {
            console.error("Erreur lors de la création de la brasserie.", error);
            res.status(500).json({ error: "Erreur interne du serveur" });
        }
    },
    put: async (req: Request, res: Response): Promise<void> => {
        const id = parseInt(req.params.id, 10);
        
        if (isNaN(id)) {
            res.status(400).json({ message: 'ID invalide' });
            return
         }        
         
        let { name, country }: Partial<Brewery> = req.body;
        
        try {
            const breweryExists = await pool.query("SELECT * FROM brewery WHERE id = $1", [id]);
            if (breweryExists.rows.length === 0) {
                res.status(404).json({ error: `Brasserie avec l'ID ${id} introuvable` });
                return;
            }
    
            const result = await pool.query(
                `UPDATE brewery 
                SET 
                    name = COALESCE($1, name), 
                    country = COALESCE($2, country) 
                WHERE id = $3
                RETURNING *`,
                [name, country, id]
            );
    
            res.status(200).json({ data: result.rows[0] });
        } catch (error) {
            console.error(`Erreur lors de la mise à jour de la brasserie ${id}.`, error);
            res.status(500).json({ error: "Erreur interne du serveur" });
        }
    },
    delete: async (req: Request, res: Response): Promise<void> => { 
        const id = parseInt(req.params.id, 10);

        if (isNaN(id)) {
           res.status(400).json({ message: 'ID invalide' });
           return
        }
        try {
            const result = pool.query('DELETE FROM brewery WHERE id = $1', [id]);
            res.status(200).json({ data: "suppression de la brasserie !" });
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
};
