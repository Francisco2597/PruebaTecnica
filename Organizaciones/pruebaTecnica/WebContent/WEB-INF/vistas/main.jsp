
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prueba Tecnica</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.min.css"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ui/1.12.1/themes/smoothness/jquery-ui.css"/></head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<body>

<form id="formIndex" name="nFormIndex" action="${pageContext.request.contextPath}/OrganizacionCO" method="post" >
<div class="wrapper">
            <!-- Sidebar  -->

            <!-- Page Content  -->
            <div id="content">
                  <main role="main">
                    <hr>
                    <div class="container">

                      <div class="card">
                        <h4 class="card-header"><strong>Informacion de la organizacion</strong></h4>
                        <div class="card-body">

                          <hr>

                          <table class="table table-hover">
                            <thead class="thead-light">
                              <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Direccion</th>
                                <th scope="col">Telefono</th>
                                 <th scope="col">Id externo</th>
                                  <th scope="col">codigo de encriptacion</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr >
                                <td><input type="text"    id="strNombre" name="strNombre"  required/></td>
                                <td><input type="text"    id="strDireccion"  name="strDireccion"  required/></td>
                                <td><input type="text"   id="strTelefono"   name="strTelefono" onkeyup="this.value=Numeros(this.value)"  Onchange="generaId();" minlength="10" maxlength="10" required/></td>
                                <td><input type="text"  id="strIdExt" name="strIdExt"  readonly/></td>
                                <td><input type="text" id="strCoEnc"  name="strCoEnc" minlength="4" maxlength="4"   required/></td>
                              </tr>
                            </tbody>
                          </table>
				 		</div>
                      </div>
                    </div> <!-- /container -->
                  </main>
                  </div>
        </div>
        <table style="margin: 0 auto">
				<tr>
					<td><button id="submitBtn" class="btn btn-primary"
							type="submit">Guardar</button></td>
				</tr>
			</table>
</form>
</body>
</html>