$(document).on('turbolinks:load', function() {
$(function () {
  $(".category__pulldown").hide();
  $(".category").hover(function() {
  
    $(".category__pulldown").show();
    $(function(){
      $('tr[data-href]', '.category__pulldown').on('click', function(){
        location.href = $(this).data('href');
      });
    });
    
  },function() {
    
        $(".category__pulldown").hide();
    })   // #category は #food を絞り込む
});

$(function () {
  $(".brand__pulldown").hide();
  $(".brand").hover(function() {
  
    $(".brand__pulldown").show();
    $(function(){
      $('tr[data-href]', '.category__pulldown').on('click', function(){
        location.href = $(this).data('href');
      });
    });
    
  },function() {
    
        $(".brand__pulldown").hide();
    })   // #category は #food を絞り込む
});

$(function () {
  $(".navi-first__pulldown").hide();
  $(".navi-first").hover(function() {
  
    $(".navi-first__pulldown").show();
    $(function(){
      $('tr[data-href]', '.category__pulldown').on('click', function(){
        location.href = $(this).data('href');
      });
    });
    
  },function() {
    
        $(".navi-first__pulldown").hide();
    })   // #category は #food を絞り込む
});

$(function () {
  $(".navi-second__pulldown-second").hide();
  $(".navi-second").hover(function() {
  
    $(".navi-second__pulldown-second").show();
    $(function(){
      $('tr[data-href]', '.category__pulldown').on('click', function(){
        location.href = $(this).data('href');
      });
    });
    
  },function() {
      $(".navi-second__pulldown-second").hide();
    })   // #category は #food を絞り込む
});

$(function () {
  $(".mypage__pulldown").hide();
  $(".mypage,.mypage__pulldown").hover(function() {
  
    $(".mypage__pulldown").show();
    $(function(){
      $('tr[data-href]', '.category__pulldown').on('click', function(){
        location.href = $(this).data('href');
      });
    });
    
  },function() {
      $(".mypage__pulldown").hide();
    })   // #category は #food を絞り込む
});

$(function () {
$(".a").hover(function(){
  $(".a").css({'background':'#DD0000', 'color':'white'})
  }
,function() {
    $(".a").css({'background':'', 'color':''})
} 
); 
})


 

$(function () {
  $(".b").hover(function(){
    $(".b").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".b").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".c").hover(function(){
    $(".c").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".c").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".d").hover(function(){
    $(".d").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".d").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".e").hover(function(){
    $(".e").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".e").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".f").hover(function(){
    $(".f").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".f").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".g").hover(function(){
    $(".g").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".g").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".h").hover(function(){
    $(".h").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".h").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".i").hover(function(){
    $(".i").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".i").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".j").hover(function(){
    $(".j").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".j").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".k").hover(function(){
    $(".k").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".k").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".l").hover(function(){
    $(".l").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".l").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".m").hover(function(){
    $(".m").css({'background':'#DD0000', 'color':'white'})
  }
  ,function() {
    $(".m").css({'background':'', 'color':''})
} 
  ); 
})

$(function () {
  $(".n").hover(function(){
    $(".n").css({'background':'#EEEEEE', 'color':'black'})
    }
  ,function() {
      $(".n").css({'background':'', 'color':''})
  } 
  ); 
  })

$(function () {
   $(".o").hover(function(){
   $(".o").css({'background':'#EEEEEE', 'color':'black'})
     }
,function() {
    $(".o").css({'background':'', 'color':''})
    } 
  ); 
}) 
$(function () {
  $(".p").hover(function(){
  $(".p").css({'background':'#EEEEEE', 'color':'black'})
    }
,function() {
    $(".p").css({'background':'', 'color':''})
      } 
    ); 
 })
});

  