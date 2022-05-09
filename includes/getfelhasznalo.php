<?php

include "oci_conn_start.php";

if($_SESSION['isAdmin'] == 1){

    $sql_text = "SELECT
    FELHASZNALO.FELHASZNALONEV
    FROM FELHASZNALO
    WHERE ID = {$_SESSION['felhasznalo_id']}";

}elseif(isset($_SESSION['isAllaskereso']) && $_SESSION['isAllaskereso']){

    $sql_text = "SELECT
    ALLASKERESO.TITULUS,
    ALLASKERESO.VEZETEKNEV,
    ALLASKERESO.KERESZTNEV,
    ALLASKERESO.LAKCIM,
    ALLASKERESO.TARTHELY,
    ALLASKERESO.RADIUS,
    ALLASKERESO.ROVID_LEIRAS,
    ALLASKERESO.EGYEB_INFO,
    ALLASKERESO.TELEFONSZAM,
    ALLASKERESO.EMAIL
    FROM ALLASKERESO
    WHERE ID = {$_SESSION['AllaskeresoID']}";

}else{

    $sql_text = "SELECT
    ALLASHIRDETO.TITULUS,
    ALLASHIRDETO.VEZETEKNEV,
    ALLASHIRDETO.KERESZTNEV,
    ALLASHIRDETO.TELEFONSZAM,
    ALLASHIRDETO.EMAIL
    FROM ALLASHIRDETO
    WHERE ID = {$_SESSION['AllashirdetoID']}";
}

include 'oci_select.php';
if(isset($mymap)){$felh = $mymap[0];}

include "oci_conn_stop.php";
