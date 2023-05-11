<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <script src="javascript/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
	<%@page import="model.Utente"%>
<meta charset="ISO-8859-1">
<title>Navbar</title>
<style type="text/css">

</style>


<script>
	
</script>
</head>
<body>

	<div id="navbar">
		
			<div class="logo"><a href="." id="menu-logo"><img style="width:100%;" src="image/slider/logo.jpg"></img></a></div>
			
			<div>
			<div class="cat" id="menu-categorie" style="padding:20px;">
					<a id="cat1" href="ModificaUtente">Zona Utenti</a>
					<a id="cat2" href="ModificaProdotto">Zona Prodotti</a>
					<a id="cat3" href="AdminPanel">Admin Home</a>
			</div>
			
			<div class="cart" style="padding:20px;">
				<% request.setAttribute("idProdotto",null); request.setAttribute("qnt",null);%>
				<a href="GestisciCarrello">Carrello</a>
			</div>
				
			<div id="logout" style="padding:20px;">
				<a href="LogoutUtente">Logout</a>
			</div>	
			
			
			
			
			</div>
		
	</div>
				


</body>
</html>