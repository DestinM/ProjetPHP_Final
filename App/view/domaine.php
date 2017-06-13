<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ESIH | Admin</title>
    <!-- Core CSS - Include with every page -->
    <link href="../assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="../assets/css/style.css" rel="stylesheet" />
    <link href="../assets/css/main-style.css" rel="stylesheet" />

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
                <a class="navbar-brand" href="../index.php">
                    <img src="../assets/img/logo_esih.png" alt="" width="230px"  />
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
                        <a href="../index.php"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                    </li>
                    <li>
                        <a href="inscription.php"><i class="fa fa-file-o" aria-hidden="true"></i>Inscription</a>
                    </li>

                    <li>
                        <a href="bulletin.php"><i class="fa fa-file-text-o" aria-hidden="true"></i>Creer un bulletin</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-cog" aria-hidden="true"></i>Parametrage<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="academique.php"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Anne Academique</a>
                            </li>
                            <li>
                                <a href="classe.php"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Classe</a>
                            </li>
                            <li>
                                <a href="matiere.php"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Matiere</a>
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
             <div id="page-wrapper" style="padding-top:30px;">

            <div class="row">
                <div class="col-lg-12">
                  <?php require("tableDomaine.php"); ?>
                </div>
           </div>

            

        </div>

    </div>

    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="../assets/plugins/jquery-1.12.4.js"></script>
    <script src="../assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="../assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../assets/plugins/pace/pace.js"></script>
    <script src="../assets/scripts/siminta.js"></script>

     
    <script src="../assets/plugins/dataTables/jquery.dataTables.min.js"></script>


    <!-- <script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
    </script> -->
    <script>
        $(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#example tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#example').DataTable();
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
} );
    </script>

</body>

</html>
