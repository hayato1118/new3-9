window.onload = function () {
  autoScroll();
}

// .scrollX 水平方向にスクロールされているピクセルを変えす
var $scrollX = -10;
function autoScroll() {
  var $scroller = document.getElementById("scroll-box");
  $scroller.scrollLeft = ++$scrollX;
  // scrollWidth paddingを含んだ画面上に表示されていないコンテンツを含む幅
  // clientWidth paddingを含んだ幅
  if( $scrollX < $scroller.scrollWidth - $scroller.clientWidth ){
    setTimeout( "autoScroll()", 6 );
    }else{
      $scrollX = 0;
      $scroller.scrollLeft = 0;
      setTimeout( "autoScroll()", 6 );
}}
