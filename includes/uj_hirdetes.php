<?php
session_start();
include 'oci_conn_start.php';

$sql_text="SELECT ID FROM HIRDETES ORDER BY ID DESC";
include 'oci_select.php';
if(isset($mymap[0])){
    $id = intval($mymap[0]["ID"])+1;
}else{
    $id = 1;
}

$ido = 0;
if(isset($_POST["ido"])){
$ido = 1;
}



$sql_text = "INSERT INTO HIRDETES(
                        ID, 
                        MEGNEVEZES, 
                        MUNKAVEGZESHELYE, 
                        IDO, 
                        MUNKAREND, 
                        MUNKAFELADATLEIRAS, 
                        KOTELVARAS,
                        OPCELVARAS,
                        JUTTATASOK,
                        JELENTKEZESIHATARIDO,
                        STATUS,
                        CEGID,
                        ALLASHIRDETOID)
                VALUES(
                       {$id},
                       '{$_POST["megnevezes"]}',
                       '{$_POST["munkavegzeshelye"]}',
                       {$ido},
                       '{$_POST["munkarend"]}',
                       '{$_POST["munkafeladatleiras"]}',
                       '{$_POST["kotelvaras"]}',
                       '{$_POST["opcelvaras"]}',
                       '{$_POST["juttatasok"]}',
                       TO_DATE('{$_POST["jelentkezesi"]}', 'YYYY-MM-DD'),
                       1,
                       {$_POST["ceg"]},
                       {$_SESSION['AllashirdetoID']}
                       )";

if(isset($conn)){

    $stid = oci_parse($conn, $sql_text);

    oci_execute($stid);

    oci_free_statement($stid);
    unset($sql_text);
}


include 'oci_conn_stop.php';

//header("Location:cegek.php");
?>