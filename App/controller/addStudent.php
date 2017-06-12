<?php
/* connection a base de donne
* capture information form $_POST
* insertion base de donnee
*/

require_once("../model/Database.php");
$erreur = false;

$code = $_POST['code'];
$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$sexe = $_POST['sexe'];
$dateNaissance = $_POST['dateNaissance'];
$email = $_POST['email'];
$vacation = $_POST['vacation'];
$classe = $_POST['classe'];

//echo $erreur;
// On vérifie si les champs sont vides
if (false) {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
} // Aucun champ n'est vide, on peut enregistrer dans la table
else {
    //Connexion a la basse de donnée.
    echo "email:" . $email;
    $data = array();
//    $data[0] = $code;
    $data[0] = $nom;
    $data[1] = $prenom;
//    $data[3] = $sexe;
//    $data[4] = $dateNaissance;
//    $data[4] = $email;
//    $data[5] = $vacation;
//    $data[6] = $classe;
    echo "<pre>";
    print_r($data);
    echo "</pre>";

    $database = new Database();
    $connection = $database->connect();
    $result = $connection->prepare("insert into Etudiant (nom, prenom)
                        VALUES (?, ?)");
    $result->execute($data);

}

?>




