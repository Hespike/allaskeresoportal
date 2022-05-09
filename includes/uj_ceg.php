<?php
include 'oci_conn_start.php';

$sql_text="SELECT ID FROM CEG ORDER BY ID DESC";
include 'oci_select.php';
if(isset($mymap[0])){
    $id = intval($mymap[0]["ID"])+1;
}else{
    $id = 1;
}

$target_dir = "../ceglogos/";
$imageFileType = strtolower(pathinfo(basename($_FILES["kep"]["name"]),PATHINFO_EXTENSION));
$fenykep_ut = $id . "_ceg".".{$imageFileType}";
$target_file = $target_dir . $fenykep_ut;
$uploadOk = 1;

if ($_FILES["kep"]["size"] > 500000) {
    echo "
            <form action='cegek.php' method='post' id='tul_nagy_kep' hidden>
            <input name='tul_nagy_kep' value='1'>
            
            </form>";
    $uploadOk = 0;
}

if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
    echo "
            <form action='cegek.php' method='post' id='nem_jo_format' hidden>
            <input name='nem_jo_format' value='1'>
            
            </form>";
    $uploadOk = 0;
}


if ($uploadOk == 1) {

    move_uploaded_file($_FILES["kep"]["tmp_name"], $target_file);



    $sql_text = "INSERT INTO CEG(
                            ID, 
                            NEV,
                            FENYKEP_UT,
                            ROVID_LEIRAS, 
                            TELEFONSZAM, 
                            EMAIL 
                         )
                    VALUES(
                           {$id},
                           '{$_POST["nev"]}',
                           '$fenykep_ut',
                           '{$_POST["rovidleiras"]}',
                           '{$_POST["telszam"]}',
                           '{$_POST["email"]}'
                           )";
    var_dump($sql_text);
    if(isset($conn)){

        $stid = oci_parse($conn, $sql_text);

        oci_execute($stid);

        oci_free_statement($stid);
        unset($sql_text);}

}

include 'oci_conn_stop.php';

header("Location:cegek.php");
?>

<script>

    function mysubmit(string){
        if(document.getElementById(string) !== null){
            document.getElementById(string).submit();
        }
    }

    function toLog(){
        window.location.href = "cegek.php";
    }

    mysubmit('tul_nagy_kep');
    mysubmit('nem_jo_format');



</script>
