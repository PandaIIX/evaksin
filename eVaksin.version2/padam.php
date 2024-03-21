<?php

include ('config.php');

    $id_pelajar =$_GET['id_pelajar'];// sending query
	$delete= mysqli_query($conn, "DELETE FROM maklumat WHERE id_pelajar = '$id_pelajar'") ;


header("Location:index.php");

?>