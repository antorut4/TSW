<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <script src="javascript/jquery.js"></script>

<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>LocalSweets Home</title>
<link rel="stylesheet" href="./css/style.css" type="text/css"/>



</head>
<body>

<%@include file="navbar.jsp" %>


	
<div class="slideshow-container" style="z-index:-1">

<div class="mySlides fade">
  <img src="image/slider/6.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <img src="image/slider/2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <img src="image/slider/home.jpg" style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>





</body>
 
</html>