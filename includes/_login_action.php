<?php
session_start();
include 'oci_conn_start.php';


if(!isset($_POST["login"]) || !isset($_POST["password"])){
    header("Location: {$_SESSION["page"]} ");
    exit();
}
$sql_text = "SELECT ID, JELSZO, STATUS, IS_ADMIN, ALLASHIRDETO_ID, ALLASKERESO_ID FROM FELHASZNALO WHERE FELHASZNALONEV = '{$_POST["login"]}'";

include 'oci_select.php';
if(isset($mymap[0])){
    if($mymap[0]["JELSZO"] == $_POST["password"]){

        if($mymap[0]["STATUS"] != 1){
            echo "
            <form action='login.php' method='post' id='nincs_statusz' hidden>
            <input name='nincs_statusz' value='1'>
            
            </form>";
        }

        $_SESSION['felhasznalo_id'] = $mymap[0]["ID"];
        $_SESSION['jelszo'] = $mymap[0]["JELSZO"];
        $_SESSION['isAdmin'] = $mymap[0]["IS_ADMIN"];
        if( $_SESSION['isAdmin'] == 0){
            if($mymap[0]["ALLASHIRDETO_ID"] == null || $mymap[0]["ALLASHIRDETO_ID"] == 0){
                $_SESSION['isAllashirdeto'] = false;
                $_SESSION['isAllaskereso'] = true;
                $_SESSION['AllaskeresoID'] = $mymap[0]["ALLASKERESO_ID"];
            }else{
                $_SESSION['isAllashirdeto'] = true;
                $_SESSION['AllashirdetoID'] = $mymap[0]["ALLASHIRDETO_ID"];
                $_SESSION['isAllaskereso'] = false;
            }
        }


        echo "
        <form action='main.php' method='post' id='sikeres_bejelentkezes' hidden>
        <input name='login' value='{$_POST["login"]}'>
        
        </form>";

    }else {

        echo "
        <form action='login.php' method='post' id='hibas_jelszo' hidden>
        <input name='hibas_jelszo' value='1'>
        
        </form>";

    }
}else{
    echo "
    <form action='login.php' method='post' id='hibas_felhasznalo' hidden>
    <input name='hibas_felhasznalo' value='1'>
    
    </form>";
}

$_SESSION["page"] = "_login_action.php"
?>

<script>

    function mysubmit(string){
        if(document.getElementById(string) !== null){
            document.getElementById(string).submit();
        };
    }

    mysubmit('hibas_jelszo');
    mysubmit('hibas_felhasznalo');
    mysubmit('nincs_statusz');
    mysubmit('sikeres_bejelentkezes');


</script>

<?php
include 'oci_conn_stop.php';
?>
