<?php

class Database
{

    // Objet PDO d'accès à la BD
    private $bdd;

    // Exécute une requête SQL éventuellement paramétrée
    public function query($sql, $params = null)
    {
        if ($params == null) {
            $resultat = $this->connect()->query($sql);    // exécution directe
        } else {
            $resultat = $this->connect()->prepare($sql);  // requête préparée
            $resultat->execute($params);
        }
        return $resultat;
    }

    public function prepare($sql, $params = null)
    {
        try {
            $resultat = $this->connect()->prepare($sql);  // requête préparée
            $resultat->execute($params);
            return $resultat;
        } catch (PDOException $e) {
            echo $e.message();
        }
    }


    // Renvoie un objet de connexion à la BD en initialisant la connexion au besoin
    function connect()
    {
        if ($this->bdd == null) {
            // Création de la connexion
            try {
                $this->bdd = new PDO('mysql:host=localhost;dbname=schoolGestion', 'root', 'secret');
                $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
                $this->bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
                echo 'Connexion reussie';
            } catch (PDOException $e) {
                echo 'Connexion impossible';
            }
        }
        return $this->bdd;
    }
}


?>