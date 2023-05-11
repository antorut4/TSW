<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Utente" %>
   <script src="javascript/jquery.js"></script>

<meta charset="ISO-8859-1">
<title>AdminPanel</title>
</head>
<body  bgcolor=#eff0e0>
<% Prodotto p= new Prodotto(); %>
	<div>
	<%if(session.getAttribute("Utente")!=null){
		Utente u = (Utente)session.getAttribute("Utente");
		if(u.isAdmin()==true)
		{%>
		<%@ include file="adminNav.jsp" %>
		
	
		<p> Benvenuto nella zona admin, tutto quello che ti potrebbe servire lo trovi in alto sulla nuova Navbar</p>
		
		
		
		
		
		
	</div>

<%}}else{ out.write("Non fare il furbo, devi essere admin");}%>

</body>
</html>