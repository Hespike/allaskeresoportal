<?php
session_start();
$_SESSION["page"] = "reg.php";


?>

<link href="../css/reg.css" rel="stylesheet" >
<link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Icon -->
        <div class="fadeIn first">
            <img src="../icons/person-plus.svg" id="icon" alt="User Icon" />
        </div>
        <?php
        if(isset($_POST["hiba"])){
            echo "
            <div class='alert alert-danger' role='alert'>
              Nem volt sikeres a regisztráció, kérlek, próbáld újra!
            </div>
            ";
        }

        if(isset($_POST["letezo_felhasznalo"])){
            echo "
            <div class='alert alert-danger' role='alert'>
            A megadott felhasználó már létezik!
            </div>
            ";
        }

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

        ?>

        <h4>Regisztrálok az oldalra...</h4>
        <!-- Login Form -->
        <div class="form-check form-check-inline" >
            <input class="btn-check"  type="radio" name="isAllaskereso" id="radios1" value="yes" onchange="show(1)" checked>
            <label class="btn btn-outline-success" id="radios1label" for="radios1">
                ...álláskeresőként!
            </label>
            <input class="btn-check"  type="radio" name="isAllaskereso" id="radios2" value="no" onchange="show(0)">
            <label class="btn btn-outline-success" id="radios2label" for="radios2">
                ...álláshirdetőként!
            </label>
        </div>

        <button class="btn alert-info" name="reset-btn" value="Login" onclick="toLog()">
            Már regisztráltam, belépek!
        </button>

        <br><br>
        <!--//álláshirdető -->
        <div id="form-b" hidden>
        <form id="trueform-b" method = "post" action="_reg_action.php" enctype="multipart/form-data">
            <fieldset>
                <input name="isAllaskereso" value="no" hidden>
                <label for="felhasznalo">Felhasználónév:</label>
                <input type="text" id="login-b" class="fadeIn second form-control" name="login" tabindex="1" placeholder="Felhasználónév" required>
                <br/>
                <label for="password">Jelszó:</label>
                <input type="password" id="password-b" class="fadeIn third form-control" name="password" tabindex="2" placeholder="*********" required>
                <br/>
                <label for="password2">Jelszó ismét:</label>
                <input type="password" id="password2-b" class="fadeIn third form-control" name="password2" tabindex="3" placeholder="*********" required>
                <br/>
                <label for="titulus">Titulus:</label>
                <input required class="form-control" type="text" id="titulus-b" name="titulus" maxlength="50" tabindex="4" placeholder="Dr.">
                <br/>
                <label for="vezetéknév">Vezetéknév:</label>
                <input required class="form-control" type="text" id="vezeteknev-b" name="vezeteknev" maxlength="50" tabindex="5" placeholder="Kovács">
                <br/>
                <label for="keresztnév">Keresztnév név:</label>
                <input required class="form-control" type="text" id="keresztnev-b" name="keresztnev" maxlength="50" tabindex="6" placeholder="János">
                <br/>
                <label for="kep-b">Profilkép: </label>
                <br/>
                <input class="form-control" type="file" id="kep-b" name="kep-b" accept="image/*" tabindex="7"/>
                <br/>
                <label for="telszam">Telefonszám:</label>
                <input class="form-control" required type="tel" id="telszam" name="telszam" maxlength="14" placeholder="06-70-123-4567" tabindex="11" pattern="[0-9]{2}-[0-9]{2}-[0-9]{3}-[0-9]{4}">
                <br/>
                <label required for="email">E-mail cím:</label>
                <input class="form-control" required type="email" id="email-b" name="email" tabindex="9" placeholder="valami@valami.hu" />
                <br/>
            </fieldset>

            <br/>

            <div class="btn-group" role="group">
                <button class="btn alert-danger" type="reset" name="reset-btn" value="Adatok törlése" tabindex="10" onlcick="erase()">
                    Adatok törlése
                </button>
                <button class="btn alert-primary" type="button" id="submit1" onclick="jelszoellenorzeshirdeto(this)" name="submit-btn" value="Regisztráció" tabindex="11">
                    Regisztráció
                </button>
            </div>

            </form>
        </div>
        <!--//álláskereső:-->
        <div id="form-a" hidden>
        <form id="trueform-a" method = "post" action="_reg_action.php" enctype="multipart/form-data">
            <fieldset>
                <input name="isAllaskereso" value="yes" hidden>
                <label for="felhasznalo">Felhasználónév:</label>
                <input type="text" id="login" class="fadeIn second form-control" name="login" tabindex="1" placeholder="Felhasználónév" required>
                <br/>
                <label for="password">Jelszó:</label>
                <input type="password" id="password" class="fadeIn third form-control" name="password" tabindex="2" placeholder="*********" required >
                <br/>
                <label for="password2">Jelszó ismét:</label>
                <input type="password" id="password2" class="fadeIn third form-control" name="password2" tabindex="3" placeholder="*********" required>
                <br/>
                <label for="titulus">Titulus:</label>
                <input class="form-control" required type="text" id="titulus" name="titulus" maxlength="50" tabindex="4" placeholder="Dr.">
                <br/>
                <label for="vezetéknév">Vezetéknév:</label>
                <input class="form-control" required type="text" id="vezeteknev" name="vezeteknev" maxlength="50" tabindex="5" placeholder="Kovács">
                <br/>
                <label for="keresztnév">Keresztnév név:</label>
                <input class="form-control" required type="text" id="keresztnev" name="keresztnev" maxlength="50" tabindex="6" placeholder="János">
                <br/>
                <label for="kep-a">Profilkép: </label>
                <br/>
                <input class="form-control" type="file" id="kep-a" name="kep-a" accept="image/*" tabindex="7"/>
                <br/>
                <label for="birthday">Születési idő:</label>
                <input class="form-control" type="date" id="birthday" name="birthday" tabindex="8">
                <br/>
                <label for="lakcim">Lakcím:</label>
                <input class="form-control" required type="text" id="lakcim" name="lakcim" maxlength="50" tabindex="9" placeholder="Település, Utca neve, házszám">
                <br/>
                <label for="tarthely">Tartózkodási hely</label>
                <input class="form-control" required type="text" id="tarthely" name="tarthely" maxlength="50" tabindex="10" placeholder="Település, Utca neve, házszám">
                <br/>
                <label for="telszam">Telefonszám:</label>
                <input class="form-control" required type="tel" id="telszam" name="telszam" maxlength="14" placeholder="06-70-123-4567" tabindex="11" pattern="[0-9]{2}-[0-9]{2}-[0-9]{3}-[0-9]{4}">
                <br/>
                <label required for="email">E-mail cím:</label>
                <input class="form-control" required type="email" id="email"  name="email" tabindex="12" placeholder="valami@valami.hu" />
                <br/>
            </fieldset>

            <br/>

            <div class="btn-group" role="group">
                <button class="btn alert-danger" type="reset" name="reset-btn" value="Adatok törlése" tabindex="10" onclick="erase()">
                    Adatok törlése
                </button>
                <button class="btn alert-primary" type="button" id="submit1" onclick="jelszoellenorzeskereso()" name="submit-btn" value="Regisztráció" tabindex="11">
                    Regisztráció
                </button>
            </div>

            </form>
        </div>

    </div>
</div>


<script type="text/javascript">


    //button
    function show(x){
        if(x==0){
            document.getElementById("form-a").hidden = true;
            document.getElementById("form-b").hidden = false;
        }else{
            document.getElementById("form-a").hidden = false;
            document.getElementById("form-b").hidden = true;
        }
    }

    show(1);

    function erase(){
        let inputs = document.getElementsByTagName("input");
        for(const input of inputs){
            input.value = "";
        }
    }

    function toLog(){
        window.location.href = "login.php";
    }


    //jelszocheck allashirdeto
        function jelszoellenorzeshirdeto(jelszocheck) {
        var jelszo = document.getElementById("password-b").value;
        var jelszoismetles = document.getElementById("password2-b").value;

        if (jelszo !== jelszoismetles) {
        window.alert("A jelszavak nem egyeznek!");
        } else {
            document.getElementById('trueform-b').submit();
        }
    }

    //jelszocheck allaskereso
    function jelszoellenorzeskereso() {
        var jelszo = document.getElementById("password").value;
        var jelszoismetles = document.getElementById("password2").value;
        if (jelszo !== jelszoismetles) {
            window.alert("A jelszavak nem egyeznek!");
        } else {
            document.getElementById('trueform-a').submit();
        }
    }



</script>