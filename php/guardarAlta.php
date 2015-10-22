<?php 

require_once "./clases/claseUsuario.php";

Usuario::InsertarUsuario($_POST['nombre'],$_POST['mail'],$_POST['clave']);

echo "usuario creado!";
?>