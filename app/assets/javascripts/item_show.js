$(function() {

  $('.photos--thumb__piece').mouseover(function(){

    var leftSide = $('.photos--thumb').children('li').index(this);
    var rightSide = $('.photos--main').children('li').index(this);

    if (leftSide != rightSide) {
      if (rightSide <= leftSide) {
        $('.photos--main').stop().animate({left: -(leftSide)*300}, 300)
      } else {
        $('.photos--main').stop().animate({left: leftSide*300}, 300)
      }
    };
  });
});