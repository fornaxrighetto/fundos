<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta charset=UTF-8 />
<title>Movimentos - Fundo${movimentos[0].fundo.nome}</title>
<script type="text/javascript">
	
</script>
</head>
<body style="font-family: verdana; font-size: 12px">
	<div class="container">
		<c:if test="${movimentos != null}">
			<table class="table table-hover table-bordered"
				style="text-align: center;">
				<tr style="font-weight: bold;">
					<td>ID</td>
					<td>TIPO</td>
					<td>VALOR</td>
					<td>QUANTIDADE</td>
					<td>VALOR COTA</td>
					<td>DATA</td>
					<td>EDITAR</td>
					<td>EXCLUIR</td>
				</tr>
				<c:forEach var="movimento" items="${movimentos}">
					<tr>
						<td>${movimento.id}</td>
						<td>${movimento.tipoMovimento.nomeTipoMovimentoFundo}</td>
						<td>${movimento.valorMovimentoFundo}</td>
						<td>${movimento.qtdMovimentoFundo}</td>
						<td>${movimento.valorCotaMovimentoFundo}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy HH:mm:ss"
								value="${movimento.dataMovimentoFundo}" /></td>
						<td><a
							href="/fundos/movimentos/${movimento.fundo.id}/movimento/${movimento.id}"><span
								class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
						<td><a
							href="/fundos/movimentos/${movimento.fundo.id}/movimento/${movimento.id}/excluir"><span
								class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<div style="text-align: center;">
			<a class="btn btn-primary"
				href="/fundos/movimentos/${idFundo}/cadastrar">Novo Movimento</a> <a
				class="btn btn-primary" href="/fundos">Voltar</a>
		</div>
	</div>
</body>
</html>