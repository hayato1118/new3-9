window.onload = function () {
  autoScroll();
}
var $scrollY = -50;
function autoScroll() {
  var $scroller = document.getElementById("scroll-box");
  $scroller.scrollTop = ++$scrollY;
  if( $scrollY < $scroller.scrollHeight - $scroller.clientHeight ){
    setTimeout( "autoScroll()", 40 );
    }else{
      $scrollY = 0;
      $scroller.scrollTop = 0;
      setTimeout( "autoScroll()", 40 );
}}
