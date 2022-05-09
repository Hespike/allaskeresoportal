<?php
$conn = oci_connect('ivanov', 'ivanov', 'localhost/XE','AL32UTF8');
if(!$conn){
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
?>