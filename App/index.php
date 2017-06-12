<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ESIH | Admin</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet"/>
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet"/>
    <link href="assets/css/main-style.css" rel="stylesheet"/>

</head>

<body>
<!--  wrapper -->
<div id="wrapper">
    <!-- navbar top -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
        <!-- navbar-header -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">
                <img src="assets/img/logo_esih.png" alt="" width="230px"/>
            </a>
        </div>
        <!-- end navbar-header -->
       

    </nav>
    <!-- end navbar top -->

    <!-- navbar side -->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <!-- sidebar-collapse -->
        <div class="sidebar-collapse">
            <!-- side-menu -->
            <ul class="nav" id="side-menu">
                <li class="">
                    <a href="index.php"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                </li>
                <li>
                    <a href="view/inscription.php"><i class="fa fa-file-o" aria-hidden="true"></i> Inscription</a>
                </li>

                <li>
                    <a href="view/bulletin.php"><i class="fa fa-file-text-o" aria-hidden="true"></i> Creer un bulletin</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-cog" aria-hidden="true"></i> Parametrage<span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="view/academique.php"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Anne
                                Academique</a>
                        </li>
                        <li>
                            <a href="classe.php"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Classe</a>
                        </li>
                        <li>
                            <a href="view/matiere.php"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Matiere</a>
                        </li>
                    </ul>
                    <!-- second-level-items -->
                </li>

            </ul>
            <!-- second-level-items -->
            </li>
            </ul>
            <!-- end side-menu -->
        </div>
        <!-- end sidebar-collapse -->
    </nav>
    <!-- end navbar side -->
    <!--  page-wrapper -->
    <div id="page-wrapper">

        <br><br><br>

        <div class="row">
            <div class="col-sm-4">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Etudiant</h2>

                    <p>gerer etudiant</p>
                    <a href="#">
                        <button id="inscrireEtudiant" type="button" data-toggle="modal" data-target="#addStudentModal"
                                class="btn btn-primary btn-lg"><i class="fa fa-plus" aria-hidden="true"></i>
                            Inscrire
                        </button>
                    </a>
                    <a href="#">
                        <button type="button" class="btn btn-primary btn-lg">
                            lister
                        </button>
                    </a>
                    <!-- modal d'inscription -->
                    <div class="modal fade" id="addStudentModal" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Inscription etudiant</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <?php require("view/addStudentForm.php"); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" onclick="$('#form').submit();" class="btn btn-primary">enregistrer</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Bulletin</h2>

                    <p>generer bulletin pour les eleves</p>
                    <a href="#">
                        <button type="button" data-toggle="modal"
                                class="btn btn-primary btn-lg"
                                href="#"> Bulletin
                        </button>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Annee Academique</h2>

                    <p>Liste annnee academiques</p>
                    <a href="academique.html">
                        <button type="button" class="btn btn-primary btn-lg" href="academique.html">Anne Academique
                        </button>
                    </a>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-sm-4">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Classe</h2>

                    <p>Afficher les classes</p>
                    <a href="view/classe.php">
                        <button type="button" class="btn btn-primary btn-lg" href="view/classe.php">Classe</button>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Matiere</h2>

                    <p>gerer les matieres</p>
                    <a href="#">
                        <button type="button" data-toggle="modal" data-target="#addMatiereModal"
                                class="btn btn-primary btn-lg" href="#"><i class="fa fa-plus" aria-hidden="true"></i> ajouter
                        </button>
                    </a>
                    <a href="view/matiere.php">
                        <button type="button" class="btn btn-primary btn-lg" href="view/matiere.php">lister</button>
                    </a>
                    <!-- modal d'inscription -->
                    <div class="modal fade" id="addMatiereModal" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Ajouter une matiere</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <?php require("view/addMatiereForm.php"); ?>
                                       </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Domaine</h2>

                    <p>Domaine</p>
                    <a href="#">
                        <button type="button" class="btn btn-primary btn-lg" href="#l">domaine</button>
                    </a>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- end page-wrapper -->

</div>
<!-- end wrapper -->

<!-- Core Scripts - Include with every page -->
<script src="assets/plugins/jquery-1.10.2.js"></script>
<script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="assets/plugins/pace/pace.js"></script>
<script src="assets/scripts/siminta.js"></script>
<script src="assets/scripts/notify.js"></script>

<script type="text/javascript">
var msg = '<?php echo $_GET['msg']; ?>';

    if (msg == "inserted") {
        $.notify("insertion reussie", "success");
    }

</script>


</body>

</html>
