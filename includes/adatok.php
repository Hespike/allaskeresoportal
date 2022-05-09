<?php
session_start();
if($_SESSION["isAdmin"] != 1 && $_SESSION["isAllaskereso"] != 1 && $_SESSION["isAllashirdeto"] != 1){
    header("Location: login.php");
    exit;
}
?>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>

<body>
<?php include 'navbar.php'; ?>
<br/>
<?php
include "getfelhasznalo.php";
if(!isset($felh)){exit();}

    echo "
</br>
<div class='container'>
<div class='row'>
<div class='col-3'></div>
<div class='col-6'>
<h1>Saját adatok módosítása</h1>
<form id='form' method='post' action='modosit.php'>";

if(isset($_POST["nincs_valtozas"])){
echo "
            <div class='alert alert-danger' role='alert'>
              Nem történt változtatás a felhasználónévben!
            </div>
            ";
}
if(isset($_POST["letezo_felhasznalo"])){
    echo "
            <div class='alert alert-danger' role='alert'>
              Már létezik ilyen nevű felhasználó, így a felhasználónév nem módosítható!
            </div>
            ";
}
if(isset($_POST["sikeres1"])){
    echo "
            <div class='alert alert-success' role='alert'>
              Sikeres művelet!
            </div>
            ";
}


foreach($felh as $key=>$value){
    echo"

    <div class='mb-3 input-group'>
        <span class='input-group-text'>{$key}</span>
        <textarea class='form-control' name='{$key}' type='text' id='{$key}'>{$value}</textarea>
    </div>
    ";
}

    /*<label for='felhnev'>Felhasználónév</label>
    <input type='text' value='{$felh['FELHASZNALONEV']}' id='felhnev'>
    <label for='felhnev'>Jelszó</label>
    <input type='text' value='{$felh['JELSZO']}' id='felhnev'>*/
    
echo"

<input id='isChange' name='isChange' value='1' hidden>
<button class='btn btn-primary' value='Módosítás' onclick='deleteAcc(1)'>Módosítás</button>
<button class='btn btn-danger' onclick='deleteAcc(0)'>Felhasználói fiók törlése</button>
</form>

</div>
<div class='col-3'></div>
</div>
</div>";



?>




</body>
</html>
<script>
    function deleteAcc(x){
        document.getElementById('isChange').value = x;
        document.getElementById('form').submit();
    }

</script>

