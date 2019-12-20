  $(function(){
    $('.photos--thumb__piece').mouseover(function(){
        //オーバーしたliのインデックスを取得
        var index = $('.photos--thumb__piece').index(this);
        //オーバーした画像URLを取得
        var imageurl = $('.photos--thumb__piece').eq(index).find('img').attr('src');
        //ulのクラス名を取得（空白で分割）
        const className = $(this).attr('class').split(" ");
        //元のメイン画像を保存しておく
        var defaultImage = $('.img.photos--main__piece.'+className).attr('src');
        $('.img.photos--main__piece.'+className).attr('src',imageurl);
    },function(){
        $('.img.photos--main__piece.'+className).attr('src',defaultImage);
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