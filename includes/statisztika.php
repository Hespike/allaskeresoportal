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

    <div class="container">
        <div class="row">
            <div class="col-1">
            </div>
            <div class="col-10">

                <table class="table table-light table-striped table-hover">
                    <thead>
                    <tr>
                        <th class="text-center" colspan="2">
                            Lekérdezések
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr><th>Felhasználók száma (adminok kivételével):</th><th><?php include "_osszes_felhasznalo.php";?></th></tr>
                    <tr><th>Álláskeresők száma:</th><th><?php include "_osszes_allaskereso.php";?></th></tr>
                    <tr><th>Álláshirdetők száma:</th><th><?php include "_osszes_allashirdeto.php";?></th></tr>
                    <tr><th>Önéletrajzok száma:</th><th><?php include "_osszes_oneletrajz.php";?></th></tr>
                    <tr><th>Pontos vagy bátor softskillt tartalmazó önéletrajzok száma:</th><th><?php include "softskillcv.php";?></th></tr>
                    <tr><th>Gyors és precíz softskillt tartalmazó önéletrajzok száma:</th><th><?php include "softskillcv2.php";?></th></tr>
                    <tr><th>Sarki kisboltbéli tapasztalattal rendelkező önéletrajzok száma:</th><th><?php include "kisbolt.php";?></th></tr>
                    <tr><th>Sarki kisboltbéli tapasztalattal rendelkező önéletrajzok száma, akik jó vezetők:</th><th><?php include "kisboltjovezeto.php";?></th></tr>
                    <tr><th>SZTE-n, a PTE-n vagy a PKE-n végzettek száma:</th><th><?php include "egyetem.php";?></th></tr>
                    <tr><th>Az élet iskolájában tanultak száma:</th><th><?php include "egyetem2.php";?></th></tr>
                    <tr><th>Az SZTE-n végzett rugalmas softskillt tartalmazó önéletrajzok száma:</th><th><?php include "szterugalmas.php";?></th></tr>
                    <tr><th>Rendőrségi tapasztalattal rendelkező határozott softskillt tartalmazó önéletrajzok száma:</th><th><?php include "rendorseghatarozott.php";?></th></tr>
                    <tr><th>Precíz vagy vidám softskillel rendelkező önéletrajzok száma, akik a Parlament-ben vagy a Youtube-nál rendelkeznek tapasztalattal:</th><th><?php include "preciz.php";?></th></tr>
                    <tr><th>SZTE-s végzettséggel rendelkezők, akik bátrak vagy lenyűgözőek :</th><th><?php include "szte.php";?></th></tr>

                    </tbody>



                </table>


            </div>
            <div class="col-1">
            </div>
        </div>
    </div>



    <?php
    include "getfelhasznalo2.php";
    $felhasznalo = [];
    if(isset($mymap)){
        $felhasznalo = $mymap;
    }

    $i = 0;


    echo"
<h3>Az adatbázisban szereplő felhasználók:</h3>
";

    foreach($felhasznalo as $row){
        if ($felhasznalo[$i]["IS_ADMIN"] == 1){
            $adminstatus = "egy admin";
        } else {
            $adminstatus = "egy felhasznalo";
        }

        echo"
        <div class='felhasznalok'>
            <h5>{$felhasznalo[$i]["FELHASZNALONEV"]} $adminstatus</h5>
      </div>
        ";


        $i++;
    }
    echo "
    </div>
    ";


    include "getallaskereso.php";
    $allaskereso = [];
    if (isset($mymap)) {
        $allaskereso = $mymap;
    }





    $i = 0;


    echo "
<h3>Az adatbázisban szereplő álláskeresők adatai:</h3>
";

    foreach ($allaskereso as $row) {

        echo "
        <div class='allaskereso'>
            <h5>{$allaskereso[$i]["TITULUS"]} {$allaskereso[$i]["VEZETEKNEV"]} {$allaskereso[$i]["KERESZTNEV"]} Születési idő: {$allaskereso[$i]["SZULIDO"]} Lakcím: {$allaskereso[$i]["LAKCIM"]} Tartózkodási hely:  {$allaskereso[$i]["TARTHELY"]} Keresési rádiusz: {$allaskereso[$i]["RADIUS"]} Rövid leírás: {$allaskereso[$i]["ROVID_LEIRAS"]} Egyéb infó:  {$allaskereso[$i]["EGYEB_INFO"]} Telefonszám: {$allaskereso[$i]["TELEFONSZAM"]} </h5>
      </div>
        ";


        $i++;
    }
    echo "
    </div>
    ";



    include "getadminmegjegyzes.php";
    $adminmegjegyzes = [];
    if(isset($mymap)){
        $adminmegjegyzes = $mymap;
    }

    $i = 0;


    echo"
<h3>Az adatbázisban szereplő adminmegjegyzések:</h3>
";

    foreach($adminmegjegyzes as $row){

        echo"
        <div class='adminmegjegyzes'>
            <h5>ID: {$adminmegjegyzes[$i]["ID"]} Közzététel időpontja: {$adminmegjegyzes[$i]["IDOPONT"]} Tartalma: {$adminmegjegyzes[$i]["TARTALOM"]} </h5>
      </div>
        ";


        $i++;
    }

    echo "
    </div>
    ";
?>



    </body>
</html>