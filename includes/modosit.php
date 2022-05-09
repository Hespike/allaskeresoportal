<?php
session_start();

include "oci_conn_start.php";
$hiba = 0;
if($_SESSION["isAdmin"] == 1){

    $sql_text = "SELECT
    ID
    FROM FELHASZNALO
    WHERE FELHASZNALONEV = '{$_POST['FELHASZNALONEV']}'";
    include 'oci_select.php';
    $sql_text = "";
    if($_POST['isChange'] != 0){
        if(isset($mymap) && count($mymap) != 0){
            if ($mymap[0]['ID'] == $_SESSION['felhasznalo_id']){
                echo 'nincs változás!';
                $hiba = 1;
            }else{
                echo 'már van ilyen név!';
                $hiba = 2;
            }
        }else{
            $sql_text="UPDATE FELHASZNALO
            SET FELHASZNALONEV = '{$_POST['FELHASZNALONEV']}' 
            WHERE ID = {$_SESSION['felhasznalo_id']}";
        }
    }else{
        $sql_text="DELETE FROM FELHASZNALO WHERE ID = {$_SESSION['felhasznalo_id']}";
    }



}elseif( !isset($_SESSION["isAllashirdeto"]) || $_SESSION["isAllashirdeto"] != 1){

    if($_POST['isChange'] != 0) {
        $sql_text = "UPDATE ALLASKERESO SET";
            foreach($_POST as $key=>$value){
                if($key != 'isChange' && $key != 'RADIUS'){
                    $sql_text .= " {$key} = '{$value}',";
                }elseif($key == 'RADIUS'){
                    $sql_text .= " {$key} = {$value},";
                }
            }
            $sql_text = substr_replace($sql_text ,"", -1);
            $sql_text .= " WHERE ID = {$_SESSION['AllaskeresoID']}";
    }else{
        $sql_text="DELETE FROM FELHASZNALO WHERE ID = {$_SESSION['felhasznalo_id']}";
        if(isset($conn)){

            $stid = oci_parse($conn, $sql_text);

            oci_execute($stid);

            oci_free_statement($stid);
            unset($sql_text);
        }
        $sql_text="DELETE FROM ALLASKERESO WHERE ID = {$_SESSION['AllaskeresoID']}";
    }

}else{

    if($_POST['isChange'] != 0) {
        $sql_text = "UPDATE ALLASHIRDETO SET";
        foreach($_POST as $key=>$value){
            if($key != 'isChange'){
                $sql_text .= " {$key} = '{$value}',";
            }
        }
        $sql_text = substr_replace($sql_text ,"", -1);
        $sql_text .= " WHERE ID = {$_SESSION['AllashirdetoID']}";
    }else{
        $sql_text="DELETE FROM FELHASZNALO WHERE ID = {$_SESSION['felhasznalo_id']}";
        if(isset($conn)){

            $stid = oci_parse($conn, $sql_text);

            oci_execute($stid);

            oci_free_statement($stid);
            unset($sql_text);
        }
        $sql_text="DELETE FROM ALLASHIRDETO WHERE ID = {$_SESSION['AllashirdetoID']}";
    }
}
if($hiba == 0){
    echo $sql_text;
    if(isset($conn)){

        $stid = oci_parse($conn, $sql_text);

        oci_execute($stid);

        oci_free_statement($stid);
        unset($sql_text);
    }
    if($_POST['isChange'] != 0){
        echo "<form action='adatok.php' method='post' id='sikeres1' hidden>
            <input name='sikeres1' value='1'>
            </form>";
    }else{
        echo "<form action='login.php' method='post' id='sikeres' hidden>
            <input name='sikeres' value='1'>
            </form>";
    }
}elseif($hiba == 1){
    echo "<form action='adatok.php' method='post' id='nincs_valtozas' hidden>
            <input name='nincs_valtozas' value='1'>
            </form>";
}elseif($hiba == 2){
    echo "<form action='adatok.php' method='post' id='letezo_felhasznalo' hidden>
            <input name='letezo_felhasznalo' value='1'>
            </form>";
}

?>
<script>
    function mysubmit(string){
        if(document.getElementById(string) !== null){
            document.getElementById(string).submit();
        }
    }
    mysubmit('nincs_valtozas');
    mysubmit('letezo_felhasznalo');
    mysubmit('sikeres');
    mysubmit('sikeres1');

</script>
