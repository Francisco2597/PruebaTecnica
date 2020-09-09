
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prueba Tecnica</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/utils/common.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">

</head>
<body>

<br><br>
<br>
<br>
<br>

	<fieldset style="width: 25%; margin: 0 auto">
		<form id="formIndex" name="nFormIndex"
			action="${pageContext.request.contextPath}/IndexCO" method="post"
			autocomplete="off">



			<br>
			<table style="margin: 0 auto">
				<tr>
					<td><button id="submitBtn" class="btn btn-primary"
							type="submit">Nueva Organizacion</button></td>
				</tr>
			</table>
		</form>
		<form id="formIndex2" name="nFormIndex2"
			action="${pageContext.request.contextPath}/IndexOrgCO" method="post"
			autocomplete="off">



			<br>
			<table style="margin: 0 auto">
				<tr>
					<td><button id="submitBtn" class="btn btn-primary"
							type="submit">Lista de Organizaciones</button></td>
				</tr>
			</table>
		</form>
	</fieldset>



</body>
</html>