
	  	
	  		<%@ page import="model.Prodotto"%>
			<%@page import="java.util.ArrayList"%>
			<%@ include file="adminNav.jsp" %>
			
			
			<p>Aggiungi Prodotto:</p><br>
		<form action="AggiungiProd" method="post">
			<select name="categoria">
				<option value="1">Pancake</option>
				<option value="2">Cupcake</option>
				<option value="3">Crepes</option>
			</select>
			<input type="text" name="nome" placeholder="nome">
			<input type="number" step=0.1 name="prezzo" placeholder="prezzo">
			<input type="text" name="descrizione" placeholder="descrizione">
			<input type="text" name="immagine" placeholder="immagine">
			<input type="submit" value="aggiungi">
		</form>
		
		
		<br>
			
			
			
		<!--
		
			
		 -->
		 
		 
		 <% if(request.getAttribute("prodotti")!=null){%>
		 
			<table style="width:100%">
			  <tr>
			    <th>idProdotto</th>
			    <th>Nome</th> 
			    <th>Descrizione</th>
			    <th>Prezzo</th>
			    <th>Immagine</th>
			    
			  </tr>
			  
	  		<% ArrayList<Prodotto> listaProdotti=(ArrayList<Prodotto>) request.getAttribute("prodotti");
	  		 	 request.setAttribute("prodotti", listaProdotti);
			  	for(Prodotto prod : listaProdotti){ 
				  %>
				 <tr>
 			
				
 			    <td> <%=prod.getIdProdotto()%></td> 
 			    <td> <%=prod.getNome() %></td>
				<td> <%=prod.getDescrizione() %></td>
       			<td> <%=prod.getPrezzo()%> </td>
       			<td> <%=prod.getImmagine() %></td>
       			<td><form action="SelezionaProdotto" method="POST">
				<input type="hidden" name="id" value="<%=prod.getIdProdotto()%>">
				<input type="submit" value="modifica">
				</form>	</td>
       			<td> <form action="RimuoviProd">
						<input type="hidden" name="id" value="<%=prod.getIdProdotto()%>">
						<input type="submit" value="elimina">
				
					</form>
       			</td>
       			
       			</tr>
 	  		<%} %>
			</table>

		<%}else
		{
		Prodotto p = new Prodotto();
		p=(Prodotto)request.getAttribute("Prodotto");
		%>
			<form action="ModProd" method="POST">
				<input type="text" name="id" value="<%=p.getIdProdotto() %>">
				<input type="text" name="nome" value="<%=p.getNome() %>">
				<input type="text"  name="prezzo" value="<%=p.getPrezzo() %> ">
				<input type="text" name="descrizione" value="<%=p.getDescrizione() %>">
				<input type="text" name="immagine" value="<%=p.getImmagine() %>">
				<input type="submit" value="continua">
			</form>
			
			
			
			
			
		<%} %>

