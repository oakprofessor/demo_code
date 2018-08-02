$(document).ready(function(){
  var navi = $('.sticky-top').offset();
  var na = navi.top;
  var slideIndex = 0;
  showSlides();
  function showSlides() {
    var i;
    var slides = document.getElementsByClassName('mySlides');
    var dots = document.getElementsByClassName('dot');
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = 'none';  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace('active', '');
    }
    slides[slideIndex-1].style.display = 'block';  
    dots[slideIndex-1].className += ' active';
    setTimeout(showSlides, 2000); 
  }
    var sticky = function(){
      var scroll = $(window).scrollTop();
      if(scroll > na){
       $('.sticky-top').css({'position':'fixed', 'top':'0'});
      }
      else{
        $('.sticky-top').css({'position':'static', 'top':'50px'});
      }
    }
    $(window).scroll(function(){
      sticky();
    });
  });
