<?php
//Szükség van egy $sql_textre, ami tartalmazza a select lekérdezést (pl. 'SELECT * FROM TEST')
//A lekérdezés után a kód a választ eltárolja az $mymapba
//Előtte mindig meg kell hívni az oci_conn_start.php-t, ami megnyitja a kapcsolatot
//Ha már nem hívjuk meg a php lekérdezésben többször, akkor hívjuk meg az oci_conn_stop.php-t, ami lezárja a kapcsolatot

$mymap = [];
if(isset($sql_text) && isset($conn)){

    $stid = oci_parse($conn, $sql_text);
    $r = oci_execute($stid);

    $i = 0;
    while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)){
        $mymap[$i++] = $row;
    }

    oci_free_statement($stid);

    unset($sql_text);
}

?>