$(".home").ready(function() {
  $(".home-carousel-img").width(window.innerWidth);
  $(".home-carousel-img").height(window.innerHeight);
  setInterval(function() {
  $(".home-carousel-img").width(window.innerWidth);
  $(".home-carousel-img").height(window.innerHeight);
  }, 10);
});
