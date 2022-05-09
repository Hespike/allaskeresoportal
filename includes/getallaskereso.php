<?php

include "oci_conn_start.php";

$sql_text = "SELECT
ID,
TITULUS,
VEZETEKNEV,
KERESZTNEV,
FENYKEP_UT,
SZULIDO,
LAKCIM,
TARTHELY,
RADIUS,
ONELETRAJZ_ID,
ROVID_LEIRAS,
EGYEB_INFO,
TELEFONSZAM,
EMAIL
    FROM ALLASKERESO";
include 'oci_select.php';


include "oci_conn_stop.php";