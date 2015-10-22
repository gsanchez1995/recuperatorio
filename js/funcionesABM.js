function GuardarAlta()
{
	var funcionAjax = $.ajax({
		url: 'nexo.php',
		type: 'post',
		data: {
			queHacer: 'GuardarAlta',
			nombre: document.getElementById('txtNombre').value,
			mail: document.getElementById('txtMail').value,
			clave: document.getElementById('txtClave').value
		}
	});

	funcionAjax.done(function(retorno)
	{
		$('#principal').html(retorno);
	});
}

function CambiarNombreDeUsuario()
{
	var funcionAjax = $.ajax({
		url: 'nexo.php',
		type: 'post',
		data: {
			queHacer: 'CambiarNombreDeUsuario',
			nombre: document.getElementById('txtNombre').value
		}
	});

	funcionAjax.done(function(retorno)
	{
		$('#principal').html(retorno);
	});
}

function Borrar(EstaEsLaId)
{
	var funcionAjax = $.ajax({
			url: 'nexo.php',
			type: 'post',
			data: {
				queHacer: 'BorrarUsuario',
				id: EstaEsLaId
			}
		});

		funcionAjax.done(function(retorno)
		{
			$('#principal').html(retorno);
		});
}