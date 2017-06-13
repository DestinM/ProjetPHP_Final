<?php
/* connection a base de donne
 * capture information form $_POST
 * insertion base de donnee
 */
/**
* 
*/

require_once("../model/Database.php");

if (isset($_POST['button'])) {



$erreur = false;
if (isset(htmlspecialchars($_POST['code_matiere'])) {
   $code_matiere = $_POST['code_matiere'];
} else {
    $code_matiere = "";
//    $erreur = true;
}

if (isset(htmlspecialchars($_POST['matiere'])) {
   $matiere = $_POST['matiere'];
} else {
    $matiere = "";
//    $erreur = true;
}

if (isset(htmlspecialchars($_POST['domaine'])) {
    $domaine = $_POST['domaine'];
} else {
    $domaine = "";
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
   $result = $connection->query("insert into matiere (Matiere_code, Matiere_name, domaine)
                       VALUES ('$code_matiere', '$matiere', '$domaine')");
   $result->execute();

}

}
?>

		

