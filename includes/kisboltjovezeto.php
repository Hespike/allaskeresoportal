
<?php
$cv_szam = "N.A.";

include "oci_conn_start.php";

$sql_text = "
SELECT COUNT(*) FROM ONELETRAJZ
LEFT JOIN SOFTSKILL ON SOFTSKILL.ID = SOFTSKILL_ID
LEFT JOIN TAPASZTALAT ON TAPASZTALAT.ID = TAPASZTALAT_ID
LEFT JOIN ALLASKERESO ON ONELETRAJZ.ID = ALLASKERESO.ONELETRAJZ_ID                
WHERE SOFTSKILL.NEV = 'jó vezető' AND TAPASZTALAT.HELY = 'Sarki kisbolt'
";
include 'oci_select.php';
if (isset($mymap[0])) {
    $cv_szam = $mymap[0]["COUNT(*)"];
}
echo $cv_szam;
?>