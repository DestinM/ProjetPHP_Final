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
;
//echo $erreur;
// On vérifie si les champs sont vides
if ($erreur) {
    echo '<font color="red">Attention, seul le champs <b>ICQ</b> peut rester vide !</font>';
} else {
    //tchek si existe deja
    $database = new Database();
    $connection = $database->connect();
    $result = $connection->prepare("select * from etudiant_note where id_etudiant=?");
    $result->execute(array($id) );


    echo "<pre>";
    print_r($result->rowCount() );
    echo "</pre>";

    if ($result->rowCount() != 0) { //si id existe deja dans la table

        $data = array();

        $data[0] = $note;
        $data[1] = $id;
        $data[2] = $matiere;

        echo "<pre>";
        print_r($data);
        echo "</pre>";

        $result = $connection->prepare("update etudiant_note set note=? WHERE  id_etudiant=? and matiere=?");
        $result->execute($data);

        header("Location: ../../App/view/bulletin.php?msg=inserted");
//        echo "note modifier";

    } else {

        $data = array();

        $data[0] = $id;
        $data[1] = $matiere;
        $data[2] = $note;

        echo "<pre>";
        print_r($data);
        echo "</pre>";

        $result = $connection->prepare("insert into etudiant_note (id_etudiant, matiere, note)
                        VALUES (?, ?, ?)");
        $result->execute($data);

        header("Location: ../../App/view/bulletin.php?msg=inserted");
//        echo "note inserted";

    }
}

?>

		

