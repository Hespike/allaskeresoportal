<?php
session_start();
unset($_SESSION["isAllashirdeto"]);
unset($_SESSION["isAdmin"]);
unset($_SESSION["isAllaskereso"]);
header("Location:login.php");
?>