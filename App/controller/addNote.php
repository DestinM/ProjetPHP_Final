<?php
/** connection a base de donne
 * capture information form $_POST
 * insertion base de donnee
 */

require_once("../model/Database.php");

$database = new Database();
$connection = $database->connect();


$erreur = false;

$id = $_POST['noteInput'];
$matiere = $_POST['matiere'];
$note = $_POST['note'];

//echo $erreur;
// On vérifie si les champs sont vides
if (false) {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
} // Aucun champ n'est vide, on peut enregistrer dans la table
else {
    //Connexion a la basse de donnée.
    echo "matiere:" . $matiere;
    $data = array();

    $data[0] = $id;
    $data[1] = $matiere;
    $data[2] = $note;

    echo "<pre>";
    print_r($data);
    echo "</pre>";

    $database = new Database();
    $connection = $database->connect();
    $result = $connection->prepare("insert into etudiant_note (id_etudiant, matiere, note)
                        VALUES (?, ?, ?)");
    $result->execute($data);

    header("Location: ../../App/index.php?msg=inserted");

}

?>

		

