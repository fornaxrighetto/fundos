<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset=UTF-8>
<title>Cadastro de Cotas</title>
<script id="validacaoCampo" type="text/javascript">
	function validar() {
		var validaValor = form1.valor.value;
		if (validaValor.trim() == "") {
			alert('Informe o valor da cota');
			return false;
		}

		if ((validaValor > 43 == validaValor < 59) || validaValor == 40
				|| validaValor == 41 || validaValor == 8) {
			alert('Digite somente n�meros');
			return false;
		}

		var validaFundo = form1.fundo.value
		if (validaFundo == "") {
			alert('Selecione um fundo');
			return false;
		}
		document.getElementById("form1").submit();
	}
</script>
</head>
<body>
	<div class="form-group spam12" style="margin-left: 40%;">
		<form id="form1" name="form1" action="/fundos/cota/salvar"
			method="POST" onsubmit='return event.keyCode!=13'>
			<div class="form-group" style="width: 18%;">
				<label for="valor">Valor:</label><input id="valor"
					class="form-control" name="valor" value="" autofocus="autofocus" />
			</div>
			<div class="form-group" style="width: 18%;">
				<c:choose>
					<c:when test="fundo.id == null">
						<label for="fundo">Fundo:</label>
						<select id="fundo" class="form-control" name="fundo.id">
							<option value="" selected="selected">Selecione...</option>
							<c:forEach var="fundo" items="${fundos}">
								<option value="${fundo.id}">${fundo.id}</option>
							</c:forEach>
						</select>
					</c:when>
					<c:otherwise>
						<input id="fundo" class="form-control" type="hidden"
							name="fundo.id" value="${idFundo}" />
					</c:otherwise>
				</c:choose>
			</div>
			<a class="btn btn-primary" onclick='validar()'>Cadastrar</a> <a
				class="btn btn-primary" href="/fundos/fundo/${idFundo}/cotas">Cancelar</a>
		</form>
	</div>
</body>
</html>