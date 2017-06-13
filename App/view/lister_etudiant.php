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
          <?php require("tableListerEtudiant.php"); ?>
      </div>

      <div class="clearfix"></div>
      <ul class="pagination pull-right">
          <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
      </ul>

  </div>

</div>
</div>
</div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Editer</h4>
    </div>
    <div class="modal-body">
      <div class="form-group">
        <input class="form-control" name="f" type="text"  value="<?php echo $resultset[0] ?>">
    </div>
    <div class="form-group">

        <input class="form-control " type="text" >
    </div>
    <div class="form-group">
       <input class="form-control " type="text" >

   </div>
   <div class="form-group">
       <input class="form-control " type="text" >

   </div>
   <div class="form-group">
       <input class="form-control " type="text" >

   </div>
   <div class="form-group">
       <input class="form-control " type="text" >

   </div>
   <div class="form-group">
       <input class="form-control " type="text" >

   </div>
   <div class="form-group">
       <input class="form-control " type="text" >

   </div>
   <div class="form-group">
       <input class="form-control " type="text" >

   </div>
</div>
<div class="modal-footer ">
    <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
</div>
</div>
<!-- /.modal-content --> 
</div>
<!-- /.modal-dialog --> 
</div>



<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
    </div>
    <div class="modal-body">

     <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>

 </div>
 <div class="modal-footer ">
    <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
</div>
</div>
<!-- /.modal-content --> 
</div>





</div>

</div>

<!-- end wrapper -->

<!-- Core Scripts - Include with every page -->
<script src="../assets/plugins/jquery-1.12.4.js"></script>
<script src="../assets/plugins/dataTables.editor.min.js"></script>

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
        $(document).ready(function(){
/*$("#mytable #checkall").click(function () {
        if ($("#mytable #checkall").is(':checked')) {
            $("#mytable input[type=checkbox]").each(function () {
                $(this).prop("checked", true);
            });

        } else {
            $("#mytable input[type=checkbox]").each(function () {
                $(this).prop("checked", false);
            });
        }
    });
    
    $("[data-toggle=tooltip]").tooltip();

     $('#mytable tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#mytable').DataTable();
 
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

});
*/
/*    // Setup - add a text input to each footer cell
    $('#mytable tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );

    // DataTable
    var table = $('#mytable').DataTable();

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
*/

} );
</script>

</script>

</body>

</html>
