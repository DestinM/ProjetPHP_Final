<!DOCTYPE html>
<html>
<head>
	<title>Esih | admin</title>
</head>
<body>

<h1 style="color: red;">generation du formulaire ... </h1>
<?php

try

{

    // On se connecte à MySQL

/*    $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', '');*/
    require_once("../model/Database.php");

    $database = new Database();
    $conn = $database->connect();

}

catch(Exception $e)

{

    // En cas d'erreur, on affiche un message et on arrête tout

        die('Erreur : '.$e->getMessage());

}


// Si tout va bien, on peut continuer


// On récupère tout le contenu de la table jeux_video

$reponse = $conn->query('SELECT matiere, note FROM etudiant_note');

$donnees = $reponse->fetchAll();
//echo "<pre>";
//print_r($donnees[1]->matiere);
//echo "</pre>";
?>

<table>
	<tbody>
	<?php for ($i=0; $i < count($donnees); $i++) { ?>

		<tr>
			<td><?php echo $donnees[$i]->matiere; ?></td>
			<td><?php echo $donnees[$i]->note; ?></td>
		</tr>
	<?php } ?>
	</tbody>
</table>


<?php




$reponse->closeCursor(); // Termine le traitement de la requête


 ?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>

<script type="text/javascript">
    // Default export is a4 paper, portrait, using milimeters for units
    var doc = new jsPDF();
    var nom = <?php echo $_GET['nom']; ?>;
    var prenom = <?php echo $_GET['prenom']; ?>;

//    doc.text('Hello world!', 10, 10);
    impression = nom + " " + prenom + "\n";

	<?php for ($i=0; $i < count($donnees); $i++) { ?>

	//alert(impression);
	impression += '<?php echo $donnees[$i]->matiere . " : " . $donnees[$i]->note ; ?>\n';

	<?php } ?>

    doc.text(impression, 10, 10);
    //alert(impression);


    doc.save(nom + '_' + prenom + '.pdf');
</script>

</body>
</html>

