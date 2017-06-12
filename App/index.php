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
            <a class="navbar-brand" href="index.html">
                <img src="assets/img/logo_esih.png" alt="" width="230px"/>
            </a>
        </div>
        <!-- end navbar-header -->
        <!-- navbar-top-links -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- main dropdown -->

            <!-- <i class="fa fa-search" aria-hidden="true" style="color:white;font-size:3em"></i> -->
            <li class="dropdown">
                <input type="text" class=""
                       style="width:200px;height:40px;padding-top:12px;font-size:1.2em;border-radius:6px;" id="searchP"
                       placeholder="Search....."/>
            </li>


            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-3x"></i>
                </a>
                <!-- dropdown user-->
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                    </li>
                </ul>
                <!-- end dropdown-user -->
            </li>
            <!-- end main dropdown -->
        </ul>
        <!-- end navbar-top-links -->

    </nav>
    <!-- end navbar top -->

    <!-- navbar side -->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <!-- sidebar-collapse -->
        <div class="sidebar-collapse">
            <!-- side-menu -->
            <ul class="nav" id="side-menu">
                <li>
                    <!-- user image section-->
                    <div class="user-section">
                        <div class="user-section-inner">
                            <img src="assets/img/user.jpg" alt="">
                        </div>
                        <div class="user-info">
                            <div>Wil<strong>Simpreux</strong></div>
                            <div class="user-text-online">
                                <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                            </div>
                        </div>
                    </div>
                    <!--end user image section-->
                </li>

                <li class="">
                    <a href="index.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                </li>
                <li>
                    <a href="inscription.html"><i class="fa fa-file-o" aria-hidden="true"></i> Inscription</a>
                </li>

                <li>
                    <a href="bulletin.html"><i class="fa fa-file-text-o" aria-hidden="true"></i> Creer un bulletin</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-cog" aria-hidden="true"></i> Parametrage<span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="academique.html"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Anne
                                Academique</a>
                        </li>
                        <li>
                            <a href="classe.html"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Classe</a>
                        </li>
                        <li>
                            <a href="matiere.html"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Matiere</a>
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
                        <button type="button" data-toggle="modal" data-target="#addStudentModal"
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
                                    <button type="button" class="btn btn-primary">Save changes</button>
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
            <div class="col-sm-6">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Classe</h2>

                    <p>Afficher les classes</p>
                    <a href="classe.html">
                        <button type="button" class="btn btn-primary btn-lg" href="classe.html">Classe</button>
                    </a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="jumbotron" style="text-align:center;">
                    <h2>Matiere</h2>

                    <p>gerer les matieres</p>
                    <a href="#">
                        <button type="button" data-toggle="modal" data-target="#addMatiereModal"
                                class="btn btn-primary btn-lg" href="#"><i class="fa fa-plus" aria-hidden="true"></i>ajouter
                        </button>
                    </a>
                    <a href="matiere.html">
                        <button type="button" class="btn btn-primary btn-lg" href="matiere.html">lister</button>
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

</body>

</html>