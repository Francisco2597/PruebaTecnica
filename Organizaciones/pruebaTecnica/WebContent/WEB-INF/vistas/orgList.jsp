<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Organizaciones</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.min.css"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ui/1.12.1/themes/smoothness/jquery-ui.css"/></head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<body>


<table id="TableRO" class="table table-striped table-bordered table-condensed">
<thead class="xxbstheadbg">
<tr>
<th>NOMBRE</th>
<th style="display:none;">DIRECCION&nbsp;&nbsp;</th>
<th style="display:none;">TELEFONO&nbsp;&nbsp;</th>
<th style="display:none;">ID&nbsp;EXTERNO&nbsp;&nbsp;</th>
<th style="display:none;">CODIGO&nbsp;ENC&nbsp;&nbsp;</th>

</tr></thead>
<tbody class="xxbstbodybg">
<c:forEach  var="orgList" items="${orgList}" varStatus="row">
<tr>
<td id="nombre" class="boton">${orgList.strNombre}</td>
<td id="direccion" style="display:none;">${orgList.strDireccion}</td>
<td id="telefono" style="display:none;">${orgList.strTelefono}</td>
<td id="id" style="display:none;">${orgList.strIdExt}</td>
<td id="numero" style="display:none;">${orgList.strCoEnc}</td>

</tr>
</c:forEach>
</tbody>
</table>

<button id="btnModal" name="btnModal" style="display:none;">Abrir modal</button>
	<div id="tvesModal" class="modalContainer">
		<div class="modal-content">
			<span class="close">×</span>
			<h2>Informacion de Organizacion</h2>
			 <table>
			   <tr >
                                <td>Nombre: <input type="text"    id="strNombre" name="strNombre"  readonly/></td>
                                <td>Direccion: <input type="text"    id="strDireccion"  name="strDireccion"  readonly/></td>
                                <td>Telefono: <input type="text"   id="strTelefono"   name="strTelefono"  readonly/></td>
                                <td>Id Exterior<input type="text"  id="strIdExt" name="strIdExt"  readonly/></td>
                                <td>Codigo<input type="text" id="strCoEnc"  name="strCoEnc" readonly/></td>
                              </tr>
                              </table>
		</div>
	</div>


<script>
    $(document).ready(function() {
      $("#ok").click(function() {
        var clave = "";

        $(this).parents("tr").find("#numero").each(function() {
          clave += $(this).html() + "\n";
        });
       
     
        
  	  var textoEscrito = prompt("Ingresa la clave", "");
	  if(textoEscrito =! clave){
		  alert("No has ingresado la clave correcta");
	  } else {
		  alert("la clave es correcta");
	  	
	  	 $("#btnModal").click();
	  }
      });


      $(".boton").click(function() {
    	  
      

       // Obtenemos todos los valores contenidos en los <td> de la fila
       // seleccionada
        var clave = "";
       $(this).parents("tr").find("#numero").each(function() {
         clave += $(this).html() + "\n";
       });
       
       var nombre = "";
       $(this).parents("tr").find("#nombre").each(function() {
         nombre += $(this).html() + "\n";
       });
       
       var direccion = "";
       $(this).parents("tr").find("#direccion").each(function() {
         direccion += $(this).html() + "\n";
       });
       
       var telefono = "";
       $(this).parents("tr").find("#telefono").each(function() {
         telefono += $(this).html() + "\n";
       });
       
       var id = "";
       $(this).parents("tr").find("#id").each(function() {
         id += $(this).html() + "\n";
       });
       
    
    	  var textoEscrito = prompt("Ingresa la clave", "");
    	  if(textoEscrito =! clave){
    		  alert("No has ingresado la clave correta");
    		 
    	  } else {
    		  alert("la clave es correcta");
    		  document.getElementById("strNombre").value=nombre;
    		  document.getElementById("strDireccion").value=direccion;
    		  document.getElementById("strTelefono").value=telefono;
    		  document.getElementById("strIdExt").value=id;
    		  document.getElementById("strCoEnc").value=clave;
    	  	
    	  	 $("#btnModal").click();
    	  }
    	

      });
      
      
    });
    if(document.getElementById("btnModal")){
    var modal = document.getElementById("tvesModal");
	var btn = document.getElementById("btnModal");
	var span = document.getElementsByClassName("close")[0];
	var body = document.getElementsByTagName("body")[0];


	btn.onclick = function() {
		modal.style.display = "block";

		body.style.position = "static";
		body.style.height = "100%";
		body.style.overflow = "hidden";
	}

	span.onclick = function() {
		modal.style.display = "none";

		body.style.position = "inherit";
		body.style.height = "auto";
		body.style.overflow = "visible";
	}

	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";

			body.style.position = "inherit";
			body.style.height = "auto";
			body.style.overflow = "visible";
		}
	}
    }
  </script>
 
 

</body>
<style>


	.modalContainer {
			display: none; 
			position: fixed; 
			z-index: 1;
			padding-top: 100px;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%; 
			overflow: auto; 
			background-color: rgb(0,0,0);
			background-color: rgba(0,0,0,0.4);
		}

		.modalContainer .modal-content {
			background-color: #fefefe;
			margin: auto;
			padding: 20px;
			border: 1px solid lightgray;
			border-top: 10px solid #58abb7;
			width: 60%;
		}

		.modalContainer .close {
			color: #aaaaaa;
			float: right;
			font-size: 28px;
			font-weight: bold;
		}

		.modalContainer .close:hover,
		.modalContainer .close:focus {
			color: #000;
			text-decoration: none;
			cursor: pointer;
		}

</style>
</html>

