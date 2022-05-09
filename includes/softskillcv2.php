<?php
$cv_szam = "N.A.";

include "oci_conn_start.php";

$sql_text = "
SELECT COUNT(*) FROM SOFTSKILL 
LEFT JOIN ONELETRAJZ ON SOFTSKILL.ID = SOFTSKILL_ID 
LEFT JOIN ALLASKERESO ON ONELETRAJZ.ID = ALLASKERESO.ONELETRAJZ_ID
WHERE SOFTSKILL.NEV = 'gyors' AND SOFTSKILL.NEV = 'precíz'
";
include 'oci_select.php';
if (isset($mymap[0])) {
    $cv_szam = $mymap[0]["COUNT(*)"];
}
echo $cv_szam;
?>