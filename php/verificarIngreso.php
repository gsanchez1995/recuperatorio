<?php 

require_once "./clases/claseUsuario.php";

$ArrayDeUsuarios = Usuario::TraerTodosLosUsuarios();

$bandera=0;

foreach ($ArrayDeUsuarios as $item) 
{
	if($_POST['mail']==$item->mail && $_POST['clave']==$item->clave)
	{
		setcookie('cookieMail',$_POST['mail']);
		setcookie('cookieClave',$_POST['clave']);
		
		$bandera=1;
		break;
	}
}

if($bandera==0)
{
	echo "no existe usuario con ese mail y clave";
	unset($_COOKIE);
	//var_dump($_COOKIE);
}else
{
	echo $_COOKIE['cookieMail'];
}
?>