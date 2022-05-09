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
include "gethirdetesek.php";
$cegek = [];
if(isset($mymap)){
    $cegek = $mymap;
}

echo "
    <div class='container'>
    ";
$i = 0;
foreach($cegek as $row){
    if($i % 3 == 0){
        echo"
        <div class='row'>
        ";
    }

    echo"
        <div class='col'>
        <div class='card' style='width: 100%;'>
          <div class='card-body'>
            <img src='../ceglogos/{$cegek[$i]["CEGKEP"]}' class='card-img-top'>
            <h5 class='card-title'>{$cegek[$i]["MEGNEVEZES"]}</h5>
            <p class='card-text'>{$cegek[$i]["MUNKAFELADATLEIRAS"]}</p>
            <p class='card-text'>
            <img height='14' class='' src='../profilepics/{$cegek[$i]["ALLASHIRDETOKEP"]}' style='border-radius: 50%;' >
            <br>
            <small class='text-muted'>{$cegek[$i]["TITULUS"]} {$cegek[$i]["VEZETEKNEV"]} {$cegek[$i]["KERESZTNEV"]}</small>
            </br>
            <small class='text-muted'>tel: {$cegek[$i]["TELEFONSZAM"]}</br> email: <a href='mailto:{$cegek[$i]["EMAIL"]}'>{$cegek[$i]["EMAIL"]}</a></small>
            </p>
            
            ";



    if($_SESSION["isAdmin"] == 1){
        echo "
            <form id ='{$cegek[$i]["ID"]}' action='inaktivalas.php' method='post'>
                <input name='id' value='{$cegek[$i]["ID"]}' hidden>
                <a class='btn btn-warning' onclick='inactive({$cegek[$i]["ID"]})'>Inaktiválás</a>
            </form>
            
            ";
    }elseif($_SESSION["isAllashirdeto"] != 1){
        echo "
                <a class='btn btn-primary' href='mailto:{$cegek[$i]["EMAIL"]}'>Jelentkezés</a>
            
            ";
    }


    echo"
          </div>
        </div>
      </div>
        ";



    if($i % 3 == 2){
        echo"
        </div>
        ";
    }
    $i++;
}
echo "
    </div>
    ";

?>




</body>
</html>


<script>
    function inactive(x){
        document.getElementById(x).submit();
    }

</script>