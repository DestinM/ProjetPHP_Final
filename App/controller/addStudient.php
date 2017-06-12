<?php
/* connection a base de donne
* capture information form $_POST
* insertion base de donnee
*/

require_once("../model/Database.php");
$erreur = false;
if (isset($_POST['code'])) {
//    $code = $_POST['code'];
} else {
    $code = "";
//    $erreur = true;
}

if (isset($_POST['nom'])) {
//    $nom = $_POST['nom'];
} else {
    $nom = "";
//    $erreur = true;
}

if (isset($_POST['prenom'])) {
    $prenom = $_POST['prenom'];
} else {
    $prenom = "";
//    $erreur = true;
}

if (isset($_POST['sexe'])) {
    $sexe = $_POST['sexe'];
} else {
    $sexe = "";
//    $erreur = true;
}

if (isset($_POST['dateNaissance'])) {
    $dateNaissance = $_POST['dateNaissance'];
} else {
    $dateNaissance = "";
//    $erreur = true;
}

if (isset($_POST['email'])) {
    $email = $_POST['email'];
} else {
    $email = "";
//    $erreur = true;
}

if (isset($_POST['vacation'])) {
    $vacation = $_POST['vacation'];
} else {
    $vacation = "";
//    $erreur = true;
}

if (isset($_POST['classe'])) {

    $classe = $_POST['classe'];
} else {
    $classe = "";
//    $erreur = true;
}

//echo $erreur;
// On vérifie si les champs sont vides
if (false) {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
} // Aucun champ n'est vide, on peut enregistrer dans la table
else {
    //Connexion a la basse de donnée.
//    $data = new Array();
    $database = new Database();
    $connection = $database->connect();
//    $result = $connection->query("insert into Etudiant (code, nom, prenom, sexe, dateNaissance, email, vacation, classe)
//                        VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
//    $result->execute();

}
?>




