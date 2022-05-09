<?php

include "oci_conn_start.php";

$sql_text = "SELECT
ID,
IDOPONT,
TARTALOM
    FROM ADMINMEGJEGYZES";
include 'oci_select.php';


include "oci_conn_stop.php";