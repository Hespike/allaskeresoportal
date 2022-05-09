<?php
$cv_szam = "N.A.";

include "oci_conn_start.php";

$sql_text = "
SELECT COUNT(*) FROM ONELETRAJZ
LEFT JOIN SOFTSKILL ON SOFTSKILL.ID = SOFTSKILL_ID
LEFT JOIN VEGZETTSEG ON VEGZETTSEG.ID = VEGZETTSEG_ID 
LEFT JOIN ALLASKERESO ON ONELETRAJZ.ID = ALLASKERESO.ONELETRAJZ_ID                
WHERE VEGZETTSEG.HELY = 'SZTE' AND SOFTSKILL.NEV = 'bátor' OR SOFTSKILL.NEV = 'lenyűgöző'
";
include 'oci_select.php';
if (isset($mymap[0])) {
    $cv_szam = $mymap[0]["COUNT(*)"];
}
echo $cv_szam;
?>