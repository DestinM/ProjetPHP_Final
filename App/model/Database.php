<?php

class Database {

  // Objet PDO d'accès à la BD
  private $bdd;

  // Exécute une requête SQL éventuellement paramétrée
  public function query($sql, $params = null) {
    if ($params == null) {
      $resultat = $this->getBdd()->query($sql);    // exécution directe
    }
    else {
      $resultat = $this->getBdd()->prepare($sql);  // requête préparée
      $resultat->execute($params);
    }
    return $resultat;
  }

  // Renvoie un objet de connexion à la BD en initialisant la connexion au besoin
  function connect() {
    if ($this->bdd == null) {
      // Création de la connexion
        try{
            $this->bdd = new PDO('mysql:host=localhost;dbname=schoolGestion','root','secret');
            $this->bdd->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
            $this->bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);
            echo 'Connexion reussie';
        }catch(PDOException $e){
            echo 'Connexion impossible';
        }
    }
    return $this->bdd;
  }
}




?>