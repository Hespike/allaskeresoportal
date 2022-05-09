<?php

include "oci_conn_start.php";

$sql_text = "SELECT
    FELHASZNALO.ID, 
    FELHASZNALO.FELHASZNALONEV,
    FELHASZNALO.JELSZO,
    FELHASZNALO.STATUS,
    FELHASZNALO.IS_ADMIN,
    FELHASZNALO.ALLASKERESO_ID,
    FELHASZNALO.ALLASHIRDETO_ID
    FROM FELHASZNALO";
include 'oci_select.php';


include "oci_conn_stop.php";