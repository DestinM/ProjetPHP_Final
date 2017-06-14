<!DOCTYPE html>
<html>
<head>
	<title>Esih | admin</title>
</head>
<body>

<h1>hello</h1>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>

<script type="text/javascript">
    // Default export is a4 paper, portrait, using milimeters for units
    var doc = new jsPDF();
    var nom = <?php echo $_GET['nom']; ?>;
    var prenom = <?php echo $_GET['prenom']; ?>;

//    doc.text('Hello world!', 10, 10);
    impression = nom + " " + prenom;

    doc.text(impression, 10, 10);
    //alert(impression);


    doc.save(nom + '_' + prenom + '.pdf');
</script>

</body>
</html>

