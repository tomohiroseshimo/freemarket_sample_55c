// $(function() {
//   $('img.thumb').mouseover(function(){
//   // "_thumb"を削った画像ファイル名を取得
//   // var selectedSrc = $(this).attr('src').replace(/^(.+)_thumb(\.gif|\.jpg|\.png+)$/, "$1"+"$2");
//   var selectedSrc = $(this).attr('src').replace(/^(.+)_thumb(\.gif|\.jpg|\.png+)$/, "$1"+"$2");

//   // 画像入れ替え
//   $('img.mainImage').stop().fadeOut(50,
//   function(){
//   $('img.mainImage').attr('src', selectedSrc);
//   $('img.mainImage').stop().fadeIn(200);
//   }
//   );
//   // サムネイルの枠を変更
//   $(this).css({"border":"2px solid #ff5a71"});
//   });

//   // マウスアウトでサムネイル枠もとに戻す
//   $('img.thumb').mouseout(function(){
//   $(this).css({"border":""});
//   });
//  });


// $(document).on('turbolinks:load', function() {
//   $(function() {
//     $('.photos--thumb__piece').mouseover(function(){
//       var ind = $('.photos--thumb').children('li').index(this);
//       var ind2 = $('.photos--main').children('li').index(this);
//     if (ind != ind2) {
//     if (ind2 <= ind) {
//       $('.photos--main').stop().fadeOut(50,
//         function(){
//           $('.photos--thumb').attr('src');
//           $('.photos--thumb').stop().fadeIn(200);
//           }
//         )
//       }
//     }
//     })
//   })
// })

// $(document).on('turbolinks:load', function() {
//   $(function() {
//     $('.photos--thumb__piece').mouseover(function(){
//       var mainImage = document.getElementById('photos--thumb__piece');
//       mainImage.setAttribute('.photos--thumb__piece','.photos--main__piece');
//       $('.photos--main').stop().fadeOut(50,
//         function(){
//           $('.photos--thumb').attr('src');
//           $(mainImage).stop().fadeIn(200);
//           }
//         )
//     }
//     )
//   }
//   )})

  $(function(){
    $('.photos--thumb__piece').mouseover(function(){
        //オーバーしたliのインデックスを取得
        var index = $('.photos--thumb__piece').index(this);
        //オーバーした画像URLを取得
        var imageurl = $('.photos--thumb__piece').eq(index).find('img').attr('src');
        //ulのクラス名を取得（空白で分割）
        var className = $(this).attr('class').split(" ");
        //元のメイン画像を保存しておく
        var defaultImage = $('.photos--main__piece'+className[1]).attr('src');
        $('.photos--main__piece'+className[1]).attr('src',imageurl);
    },function(){
        $('.photos--main__piece'+className[1]).attr('src',defaultImage);
    });
  });


// $(function(){
//   $('.subimage li').hover(function(){
//       //オーバーしたliのインデックスを取得
//       var index = $('.subimage li').index(this);
//       //オーバーした画像URLを取得
//       var imageurl = $('.subimage li').eq(index).find('img').attr('src');
//       //ulのクラス名を取得（空白で分割）
//       className = $(this).parent().attr('class').split(" ");
//       //元のメイン画像を保存しておく
//       defaultImage = $('img.mainimage.'+className[1]).attr('src');
//       $('img.mainimage.'+className[1]).attr('src',imageurl);
//   },function(){
//       $('img.mainimage.'+className[1]).attr('src',defaultImage);
//   });
// })