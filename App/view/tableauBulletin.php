

<?php
        require_once("../model/Database.php");

        $database = new Database();
        $conn = $database->connect(); 

        # Set Your Table class id to fetch records
        # You can set it from $_GET OR $_POST value
        $class = 5;
        //$class = mysqli_real_escape_string($conn, $_POST['Class']);

        # Fetch records 
        $sql = "SELECT nom,prenom FROM etudiant";

        $result = $conn->query($sql);
        $columns = array();
        $resultset = array();

        # Set columns and results array
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            if (empty($columns)) {
                $columns = array_keys($row);
            }
            $resultset[] = $row;
        }


        # If records found
        if( count($resultset > 0 )) {
?>
            <table id="mytable" class="table table-bordered display"  width="100%" cellspacing="0">
                <thead>
                    <tr class='info';>
                        <?php foreach ($columns as $k => $column_name ) : ?>
                            <th> <?php echo $column_name;?> </th>
                        <?php endforeach; ?>
                        <th>notes</th>
                    </tr>
                </thead>
                 <tfoot>
            <tr>
                <th>nom</th>
                <th>prenom</th>
                <th>notes</th>
            </tr>
        </tfoot>
                <tbody>

                    <?php

                        // output data of each row
                        foreach($resultset as $index => $row) {
                        $column_counter =0;
                    ?>
                        <tr class='success';>
                            <?php for ($i=0; $i < count($columns); $i++):?>
                                <td> <?php echo $row[$columns[$column_counter++]]; ?>   </td>
                            <?php endfor;?>
                             <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button onclick="$('#noteInput').attr('value', <?php echo $index?>)" id="<?php echo $index; ?>" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" >notes</button></p></td>
                        </tr>
                    <?php } ?>

                </tbody>
            </table>

    <?php }else{ ?>
        <h4> Information Not Available </h4>
    <?php } ?>