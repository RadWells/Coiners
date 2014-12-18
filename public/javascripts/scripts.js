$(document).ready(function() {
   $('.button2').mouseenter(function() {
       $(this).animate({
           height: '+=10px'
       });
   });
   $('.button2').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       }); 
   });
});

$(document).ready(function() {
   $('.letter-button').mouseenter(function() {
       $(this).animate({
           height: '+=10px'
       });
   });
   $('.letter-button').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       }); 
   });
});