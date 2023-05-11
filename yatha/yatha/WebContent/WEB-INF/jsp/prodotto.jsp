<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LocalProducts</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
   <script src="javascript/jquery.js"></script>
	
	

	
</head>
<body >
<%@include file="navbar.jsp" %>
<!-- Visualizza prodotto selezionato -->
<%@ page import="model.Prodotto"%>
<%@ page import="model.Utente" %>
		
	<% Prodotto prod=(Prodotto)request.getAttribute("Prodotto"); %>
	<%// Utente u =(Utente)session.getAttribute("Utente"); %>
<div id="contenitore-prodotto">
	
	<div id="immagine-prodotto">
		<img alt="immagine" src="<%=prod.getImmagine() %>">
	</div>
	<div id="dettagli-ordine">
		<h3><%=prod.getNome() %></h3>
		<p class="descrizione"><%=prod.getDescrizione() %></p>
		<h4><span>Prezzo:<%=prod.getPrezzo()+"0$" %></span></h4>
		
		<div class="porcod">
		
			<div class="diocan">
			Quantità:
			<form action="GestisciCarrello" method="POST">
				<input type="number" name="qnt" min="1" max="10" placeholder="1">
				<input type="hidden" value="<%=prod.getIdProdotto()%>" name="idProdotto">
				<input type="submit" value="Aggiungi" id="addcart">
				
			
			</form>
			</div>

				
				
					
				
				
				
		</div>
		
	</div>

</div>
   
   





</body>
</html>