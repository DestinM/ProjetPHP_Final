<?php
/* connection a base de donne
 * capture information form $_POST
 * insertion base de donnee
 */
/**
* 
*/

require_once("../model/Database.php");
<<<<<<< HEAD

        $database = new Database();
        $connection = $database->connect(); 


=======
>>>>>>> d32043246df4a48ce130578873800f571681ead1
$erreur = false;

$matiere = $_POST['matiere'];
$domaine = $_POST['domaine'];

//echo $erreur;
// On vérifie si les champs sont vides
if (false) {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
} // Aucun champ n'est vide, on peut enregistrer dans la table
else {
    //Connexion a la basse de donnée.
    echo "matiere:" . $matiere;
    $data = array();

    $data[0] = $matiere;
    $data[1] = $domaine;

    echo "<pre>";
    print_r($data);
    echo "</pre>";

    $database = new Database();
    $connection = $database->connect();
    $result = $connection->prepare("insert into matiere (Matiere_Name, domaine)
                        VALUES (?, ?)");
    $result->execute($data);

    header("Location: ../../App/index.php?msg=inserted");

}

?>

		

