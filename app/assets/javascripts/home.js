//$(".home-carousel, .home-carousel-img").width(window.innerWidth);
//$(".home-carousel, .home-carousel-img").height(window.innerHeight);
$(".home.index").ready(function() {
  $(".home-carousel, .home-carousel-img").width(window.innerWidth);
  $(".home-carousel, .home-carousel-img").height(window.innerHeight);
});

$(window).resize(function() {
  $(".home-carousel, .home-carousel-img").width(window.innerWidth);
  $(".home-carousel, .home-carousel-img").height(window.innerHeight);
});
