<?php
$felhasznalok_szama = "N.A.";

include "oci_conn_start.php";

$sql_text = "SELECT COUNT(*) FROM FELHASZNALO WHERE NOT IS_ADMIN = 1";
include 'oci_select.php';
if (isset($mymap[0])) {
$felhasznalok_szama = $mymap[0]["COUNT(*)"];
}

echo $felhasznalok_szama;
include "oci_conn_stop.php";
?>