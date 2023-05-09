let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += (n*3));
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = (n*3 - 2));
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("carousel__item");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length - 2}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = slideIndex-1; i < slideIndex+2; i++) {
    slides[i].style.display = "block";
  }
}