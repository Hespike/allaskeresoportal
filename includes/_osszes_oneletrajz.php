<?php
$oneletrajzok_szama = "N.A.";

include "oci_conn_start.php";

$sql_text = "SELECT COUNT(*) FROM ONELETRAJZ";
include 'oci_select.php';
if (isset($mymap[0])) {
    $oneletrajzok_szama = $mymap[0]["COUNT(*)"];
}

echo $oneletrajzok_szama;
include "oci_conn_stop.php";
?>