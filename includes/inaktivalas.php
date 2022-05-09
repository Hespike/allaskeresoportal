<?php

include "oci_conn_start.php";

$sql_text = "UPDATE HIRDETES SET STATUS ='0' WHERE ID = {$_POST['id']}";

if(isset($conn)){

    $stid = oci_parse($conn, $sql_text);

    oci_execute($stid);

    oci_free_statement($stid);
    unset($sql_text);
}

include "oci_conn_stop.php";
header("Location: main.php ");
