<?php
session_start();

?>

<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>

<body>
<?php include 'navbar.php';

if( !isset($_SESSION["isAllashirdeto"]) || $_SESSION["isAllashirdeto"] != 1){
    echo"
    <br><br>
    <div class='container'>
        <div class='row'>
            <div class='col-3'></div>
            <div class='col-6'>
                <div class='alert alert-danger' role='alert'>
                Cégek hozzáadása csak álláshirdetőknek engedélyezett!
                </div>
            </div>
            <div class='col-3'></div>
        </div>
    </div>
    
    ";
}

if( isset($_SESSION["isAllashirdeto"]) && $_SESSION["isAllashirdeto"] == 1){

    include "oci_conn_start.php";
    $sql_text="SELECT ID, NEV FROM CEG";
    include 'oci_select.php';
    include "oci_conn_stop.php";




    echo"
        </br>
        <div class='container'>
        <div class='row'>
        <div class='col-3'></div>
        <div class='col-6'>
        <h2>Új álláshirdetés létrehozása</h2>
        <form id='uj_allashirdetes' action='uj_hirdetes.php' method='post'>
            <select class='mb-3 form-select' name='ceg'>
            <option selected>Válassz céget!</option>
      ";

    if(isset($mymap)){
        foreach($mymap as $row){
            echo "
            <option value='{$row['ID']}'>{$row['NEV']}</option>
            ";
        }
    }

    echo"
            </select>
            
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Megnevezés</span>
                <textarea class='form-control' name='megnevezes' type='text' id='megnevezes' maxlength='30' ></textarea>
            </div>
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Munkavégzés helye</span>
                <textarea class='form-control' name='munkavegzeshelye' type='text' id='munkavegzeshelye' maxlength='30' ></textarea>
            </div>
            <div class='mb-3 form-check form-switch'>
              <input class='form-check-input' type='checkbox' role='switch' id='switch' name='ido' checked>
              <label class='form-check-label' for='switch'>Határozatlan időre</label>
            </div>
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Munkarend fajtája</span>
                <textarea class='form-control' name='munkarend' type='text' id='munkarend' maxlength='10' ></textarea>
            </div>
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Munkafeladat leírás</span>
                <textarea class='form-control' name='munkafeladatleiras' type='text' id='munkafeladatleiras' maxlength='100' ></textarea>
            </div>
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Kötelező elvárások</span>
                <textarea class='form-control' name='kotelvaras' type='text' id='kotelvaras' maxlength='50' ></textarea>
            </div>
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Opcionális elvárások</span>
                <textarea class='form-control' name='opcelvaras' type='text' id='opcelvaras' maxlength='50' ></textarea>
            </div>
            <div class='mb-3 input-group'>
                <span class='input-group-text'>Juttatások</span>
                <textarea class='form-control' name='juttatasok' type='text' id='juttatasok' maxlength='50' ></textarea>
            </div>
            <div>
                <label for='jelentkezesi'>Jelentkezési határidő:</label>
                <input class='mb-3 form-control' type='date' id='jelentkezesi' name='jelentkezesi' >
            </div>
            <input type='submit' class='mb-3 btn btn-primary' value='Létrehozás'>
            
        </form>";

    if(isset($_POST["tul_nagy_kep"])){
        echo "
            <div class='alert alert-danger' role='alert'>
            A feltölteni kívánt kép túl nagy!
            </div>
            ";
    }

    if(isset($_POST["nem_jo_format"])){
        echo "
            <div class='alert alert-danger' role='alert'>
            A feltölteni kívánt kép nem JPG, PNG, vagy JPEG formátumú!
            </div>
            ";
    }

    echo "<h2>Új cég létrehozása</h2>
        <form id='uj_ceg' action='uj_ceg.php' method='post' enctype='multipart/form-data'>
         <div class='mb-3 input-group'>
                <span class='input-group-text'>Cég neve:</span>
                <textarea class='form-control' name='nev' type='text' id='nev' maxlength='30' ></textarea>
          </div>
          <div>
          <div class='mb-3 input-group'>
                <span class='input-group-text'>Cég logója:</span>
                <input class='form-control' type='file' id='kep' name='kep' accept='image/*' maxlength='100'>
          </div>
            
          </div>
          <div class='mb-3 input-group'>
                <span class='input-group-text'>Rövid leírás</span>
                <textarea class='form-control' name='rovidleiras' type='text' id='rovidleiras' maxlength='120' ></textarea>
            </div>
          <div>
        <label for='telszam'>Telefonszám:</label>
                <input class='form-control' required type='tel' id='telszam' name='telszam' maxlength='14' pattern='[0-9]{2}-[0-9]{2}-[0-9]{3}-[0-9]{4}'>
             </div>
             <div>
              <label required for='email'>E-mail cím:</label>
                <input class='mb-3 form-control' required type='email' id='email-b' name='email' tabindex='9' maxlength='20' />
                </div>
          <input type='submit' class='mb-3 btn btn-primary' value='Létrehozás'>
        </form>
        
        
        
        
        </div>
        <div class='col-3'></div>
        </div>
        </div>
    ";
}
?>

</body>
</html>