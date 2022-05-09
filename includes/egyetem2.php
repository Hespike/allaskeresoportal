<?php
$cv_szam = "N.A.";

include "oci_conn_start.php";

$sql_text = "
SELECT COUNT(*) FROM VEGZETTSEG 
LEFT JOIN ONELETRAJZ ON VEGZETTSEG.ID = VEGZETTSEG_ID 
LEFT JOIN ALLASKERESO ON ONELETRAJZ.ID = ALLASKERESO.ONELETRAJZ_ID
WHERE VEGZETTSEG.HELY = 'Az élet iskolája'
";
include 'oci_select.php';
if (isset($mymap[0])) {
    $cv_szam = $mymap[0]["COUNT(*)"];
}
echo $cv_szam;
?>