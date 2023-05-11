<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zona Utenti</title>
</head>
<body bgcolor=#eff0e0>
		<%@ page import="model.Utente"%>
			<%@page import="java.util.ArrayList"%>
			<%@ include file="adminNav.jsp" %>
			
			
		
			
			
			
		<!--
		
			
		 -->
		 
		 
		 <% if(request.getAttribute("utenti")!=null){ %>
			<table style="width:100%">
			  <tr>
			    <th>idUtente</th>
			    <th>Username</th> 
			    <th>Password</th>
			    <th>Citta</th>
			    <th>E-Mail</th>
			    <th>Telefono</th>
			    <th>Indirizzo</th>
			    
			  </tr>
			  
	  		<% ArrayList<Utente> listaUtenti=(ArrayList<Utente>) request.getAttribute("utenti");
			  	for(Utente u : listaUtenti){ 
				  %>
				<tr>
 			
				
 			    <td> <%=u.getIdCliente() %></td> 
 			    <td> <%=u.getUsername() %></td>
				<td> <%=u.getPassword() %></td>
       			<td> <%=u.getCittà() %> </td>
       			<td> <%=u.getEmail() %></td>
       			<td> <%=u.getTelefono() %></td>
       			<td> <%=u.getIndirizzo() %></td>
       			<td> <form action="SelezionaUtente" method="POST">
						<input type="hidden" name="id" value="<%= u.getIdCliente()%>">
						<input type="submit" value="modifica">
					</form></td>
       			<td> <form action="RemoveUtente" method="post">
					<input type="hidden" name="id" value="<%= u.getIdCliente()%>">
					<input type="submit" value="elimina">
					</form></td>
	       		</tr>
 	  		<%} %>
			</table>

		<%}else
		{
		Utente u = new Utente();
		u=(Utente)request.getAttribute("Utente1");
		%>
			<form action="ModUtente" method="POST">
				<input type="text" name="id" value="<%=u.getIdCliente() %>">
				<input type="text" name="username" value="<%=u.getUsername() %>">
				<input type="text"  name="password" value="<%=u.getPassword() %> ">
				<input type="text" name="città" value="<%=u.getCittà() %>">
				<input type="text" name="email" value="<%=u.getEmail() %>">
				<input type="text" name="telefono" value="<%=u.getTelefono() %>">
				<input type="text" name="indirizzo" value="<%=u.getIndirizzo() %>">
				<input type="submit" value="continua">
			</form>
			<a href="AdminPanel">AdminPanel</a>
		<%} %>
</body>
</html>