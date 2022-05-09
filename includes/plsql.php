<?php

include "oci_conn_start.php";

$sql_text ="
SET SERVEROUTPUT ON
DECLARE
    type namesarray IS VARRAY(5) OF VARCHAR2(10); 
    names namesarray; 
    x integer;
BEGIN 
    names := namesarray('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
    total := names.count;
    dbms_output.put_line(total);
END; 
/
";
include 'oci_select.php';

include "oci_conn_stop.php";

if(isset($mymap)){var_dump($mymap);}

?>