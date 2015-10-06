<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Tipo de Fundo</title>
<script id="validacaoCampo" type="text/javascript">
	function validar() {
		var validaNome = form1.nomeTipoFundo.value;
		if (validaNome.trim() == "") {
			alert('Digite um nome valido');
			return false;
		} else {
			document.getElementById("form1").submit();
		}
	}
</script>
</head>
<body>
	<div class="form-group spam12" style="margin-left: 40%;">
		<form id="form1" name="form1" action="/fundos/tipo-de-fundo/salvar"
			method="POST" onkeypress='return event.keyCode!=13'>
			<div style="width: 18%;">
				<label for="nome">Tipo de Fundo:</label><input id="nome"
					class="form-control" name="nomeTipoFundo" value=""
					autofocus="autofocus" />
			</div>
			<a class="btn btn-primary" onclick='validar()'>Cadastrar</a> <a
				class="btn btn-primary" href="/fundos/tipo-de-fundo">Cancelar</a>
		</form>
	</div>
</body>
</html>