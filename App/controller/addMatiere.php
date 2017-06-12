<?php
/* connection a base de donne
 * capture information form $_POST
 * insertion base de donnee
 */
/**
* 
*/

		$code_matiere = htmlspecialchars($_POST['code_matiere']);
		$matiere = htmlspecialchars($_POST['matiere']);
		$domaine = htmlspecialchars($_POST['domaine']);

		$sql = "INSERT INTO Matiere (Matiere_code, Matiere_name, Domaine)
		    VALUES ('$code_matiere', '$matiere', '$domaine')";

		

