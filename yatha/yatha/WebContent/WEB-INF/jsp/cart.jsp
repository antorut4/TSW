<!DOCTYPE html>
<%@page import="model.Carrello" %>
<%@page import="model.ProdottoCarrello" %>
<html>
  <head>
    <title>LocalCart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
   <script src="javascript/jquery.js"></script>

  
   <script>
     $(document).ready(function(){
    	 var sum=0;
    	 var a= document.getElementsById("prezzo");
    	 var qnt= document.getElementsById("qnt");
    	var i;
    	 for(i=0;i<a.length;i++){
    		 
    		sum=(parseFloat(a[i].value)*qnt[i].value ) + sum;
    		 console.log(sum.valueOf());
    		 
    	 }
    	 $("#prezzoTot").html(sum.valueOf());

    	 

    	    });
    	 
    	 
    	 
    	 
     });
     
     
     
     
     
     
     </script>
  
  
  </head>
 <body  bgcolor=#eff0e0>
    <%@include file="/WEB-INF/jsp/navbar.jsp"%>
    
      <%@ page import="model.Utente" %>
      <%@ page import="model.Carrello" %>
       <%@ page import="model.Prodotto" %>
       <%@ page import="model.CarrelloDB" %>
       <%@ page import="java.util.ArrayList" %>
  
    <%    
    
    if(session.getAttribute("Cart")!=null){
        %>
            <div id="carrello">
            <table>
          
       <tr class="cart">
       	<th>idProdotto</th>
       	 <th>Nome</th> 
      		 <th>Quantità</th> 
     	     <th>Prezzo</th>
       </tr>
       
        <%
   		Carrello cart = (Carrello)session.getAttribute("Cart");
   		
   		for(ProdottoCarrello pc : cart.getCart())
   		{

   			%>
   			
      <tr id="<%= pc.getProdotto().getIdProdotto() %>">
	    	 <td><%= pc.getProdotto().getIdProdotto()%></td>
	   		 <td><p><%=pc.getProdotto().getNome() %></p> </td>
	   		 <td><p id="qnt"><%= pc.getQuantita() %></p></td>
	  	     <td><p id="prezzo"><%= pc.getProdotto().getPrezzo()%></p></td>
	  	     
	       </tr>
    
      <% 
        	}
     
     
      %> 
       <tr style="border:1px solid grey; margin:5%">
    	 <td colspan="2"> </td>
   		 <td style="text-align:center">Prezzo tot:</td>
   		 <% System.out.println(); %>
   		 <td><p id="prezzoTot"><%= cart.getPrezzoTot() %></p></td>
    </tr>
    
         </table>
    </div>
    <form method="POST" action="EffettuaAcquisto">
    	<input type="hidden" value="idProdotto">
    	<input type="hidden" value="prezzoTot">
    	<input type="submit" id="subm" value="Procedi con l'acquisto">
    </form>
    <%}else{ %>
     <div id="carrello"> 
       <p> 
         Non c'è nessun articolo.Clicca <a href="."> qui </a>  per continuare a navigare.
         
        </p>       
     </div>
     
     <%} %>
    
    
    
      </body>
</html>
