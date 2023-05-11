<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   <script src="javascript/jquery.js"></script>
   <script src="javascript/ricerca.js"></script>
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
	<%@page import="model.Utente"%>
<meta charset="ISO-8859-1">
<title>Navbar</title>
<style type="text/css">


@media screen and (max-width:800px){
.nascosto{
visibility:hidden;}
}
@media screen and (max-width:800px){
.nascosto.visibile{
visibility:visible;

}}

</style>


<script>
$("document").ready(function(){
	$("#regform").hide();


	
	$("#registrati").click(function(){
	  $("#regform").toggle();
	  $('.contenitore-login').toggle();
	});

			

});
</script>
</head>
<body>

	<div id="navbar">
		
			<div class="logo"><a href="." id="menu-logo"><img style="width:100%;" src="image/slider/logo.jpg"></img></a></div>
			<form action="Ricerca" method="get">
				<input type="text" name="q" list="ricerca-datalist" placeholder="Ricerca" onkeyup="ricerca(this.value)" value="<c:out value="${param.q}" />">
				<datalist id="ricerca-datalist"></datalist>
			</form>
			<div class="hamb"><img class="hamb" onclick="myFunction()" style="width:30px;position:absolute; right:5px; top:5px;" src="image/dolci/hamburger.png"></img></div>
			<script>
				function myFunction() {
				  var x = document.getElementById("myTopnav");
				  if (x.className === "nascosto") {
				    x.className += " visibile";
				  } else {
				    x.className = "nascosto";
				  }
				}
			</script>
			<div id="myTopnav" style="background-color: #ec8d93;">




			<div class="cat" id="menu-categorie">
					<a id="cat1" href="opzioneCategoria?titolo=1">Pancake</a>
					<a id="cat2" href="opzioneCategoria?titolo=2">Cupcake</a>
					<a id="cat3" href="opzioneCategoria?titolo=3">Crepes</a>
			</div>
			<div class="cart">
				<% request.setAttribute("idProdotto",null); request.setAttribute("qnt",null);%>
				<a href="GestisciCarrello">Carrello</a>
				</div>
				
				<%
					Utente u=(Utente)session.getAttribute("Utente");
				if(u==null)
				{
					%>
					<div id="Reg">
						<button id="registrati" data-toggle="collapse" data-target="#navbar-collapse">Registrati</button>
						<div id="regform">
							<form  method="POST" action="RegistraUtente">
								<input type="text" name="username" placeholder="Username">
								<input type="text" name="password" placeholder="Password">
								<input type="Email" name="email" placeholder="Email">
								<input type="text" name="indirizzo" placeholder="Indirizzo">
								<input type="text" name="città" placeholder="Città">
								<input type="text" name="telefono" placeholder="telefono">
								<input type="submit">
							</form>
						</div>
					</div>
					<div class="contenitore-login" id="login">
						
						Login:
						<form method="POST" action="LoginUtente">
							<input type="text" name="username"placeholder="Username"><br>
							<input type="password" name="password"placeholder="Password"><br>
							<input type="submit">
						</form>
						
				
					</div>
					
					<%

				}
				else{
					%>
					<div id="logout">
						<a href="LogoutUtente">Logout</a>
					</div>
					
					<%
					
					if(u.isAdmin()==true){
						%>
						<div id="admin"><a href="AdminPanel">AdminPanel</a></div> <%
						
					}
				}
				
					
				%>
			
			
			
			
			
			
		
		
			
		</div>
		
		</div>
				


</body>
</html>