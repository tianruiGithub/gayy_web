$(".home").ready(function() {
  $(".home-carousel-img").width(window.innerWidth);
  $(".home-carousel-img").height(window.innerHeight);
  $(".home-content").height(window.innerHeight);
  setInterval(function() {
    $(".home-carousel-img").width(window.innerWidth);
    $(".home-carousel-img").height(window.innerHeight);
    $(".home-content").height(window.innerHeight);
  }, 10);
});
