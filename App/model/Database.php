<?php

class Database
{

    // Objet PDO d'accès à la BD
    private $bdd;

   


    // Renvoie un objet de connexion à la BD en initialisant la connexion au besoin
    function connect()
    {
        if ($this->bdd == null) {
            // Création de la connexion
            try {
                $this->bdd = new PDO('mysql:host=localhost;dbname=schoolGestion', 'root', 'DAANA');
                $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
                $this->bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
                // echo 'Connexion reussie';
            } catch (PDOException $e) {
                echo 'Connexion impossible';
            }
        }
        return $this->bdd;
    }
}


?>