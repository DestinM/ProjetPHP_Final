

<?php

        # Your database credentials goes here
        $servername = "localhost";
        $username = "root";
        $password = "DAANA";
        $dbname = "schoolGestion";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        # Set Your Table class id to fetch records
        # You can set it from $_GET OR $_POST value
        $class = 5;
        //$class = mysqli_real_escape_string($conn, $_POST['Class']);

        # Fetch records 
        $sql = "SELECT * FROM matiere";

        $result = $conn->query($sql);
        $columns = array();
        $resultset = array();

        # Set columns and results array
        while ($row = mysqli_fetch_assoc($result)) {
            if (empty($columns)) {
                $columns = array_keys($row);
            }
            $resultset[] = $row;
        }


        # If records found
        if( count($resultset > 0 )) {
?>
            <table id= "grid-basic" class="table table-bordered" >
                <thead>
                    <tr class='info';>
                        <?php foreach ($columns as $k => $column_name ) : ?>
                            <th> <?php echo $column_name;?> </th>
                        <?php endforeach; ?>
                    </tr>
                </thead>
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
                        </tr>
                    <?php } ?>

                </tbody>
            </table>

    <?php }else{ ?>
        <h4> Information Not Available </h4>
    <?php } ?>