<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<html>
  <head>
    <title>local <%= application.getAttribute("titolo") %> </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
	
   <script src="javascript/jquery.js"></script>

 <!--     <script>
      $("document").ready(function(){
    	  $(".admin").hide();
    	  var ses = document.getElementById("s");
    	  alert(ses.value);
		if(ses==true)
			{
				$(".admin").show();
			}
		else{}
		
		});
     
      </script> -->
  </head>
  <body bgcolor=#eff0e0 >

           <%@include file="/WEB-INF/jsp/navbar.jsp" %>
           
     <div id="catalogo">
	  		
  				<% ArrayList<String> listaSottoCategorie=(ArrayList<String>)request.getAttribute("listaTipi");				// (ArrayList<String>) application.getAttribute("listaTipi");
  	   	  		for(String str : listaSottoCategorie){ 
		  		%>
		  		<%} %>
		  

	  
	  	
	  	
	  	
	 <ul id="prodotti">
	  	
	  	      <%@ page import="model.Prodotto"%>
	  	<% 
	  	ArrayList<Prodotto> listaProdotti=(ArrayList<Prodotto>) request.getAttribute("listaProdotti");
	  	for(Prodotto prod : listaProdotti){ 
		  %>
		 
 			
				<li class="prodotto">
	 			    <div class="listitem"><a  href="OttieneProdotto?id=<%=prod.getIdProdotto()%>"><img class="prod" src="<%=prod.getImmagine() %>" alt="Card image cap"></a>
						<p><%=prod.getNome() %></p>
	       				<p id="prezzo-prodotto"><%=prod.getPrezzo()+"0$"%> </p>
	       			</div>
	  			</li>
       
 	  	<%} %>	
	  	</ul>
	  	
	  	</div>
	  	 
  </body>
</html>
