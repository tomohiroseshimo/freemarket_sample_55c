$(function(){
  var dropzone = $('.dropzone-area');
  var dropzone2 = $('.dropzone-area2');
  // var dropzone_box = $('.sell-upload-drop-box');
  var images = [];
  var inputs = [];
  var input_area = $('.sell-upload-drop-file');
  var preview = $('#preview');
  var preview2 = $('#preview2');

  // 画像複数投稿機能
  $(document).on('change', 'input[type= "file"].upload-image',function(event) {
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    inputs.push($(this));
    var img = $(`<div class= "img_view"><img></div>`);
    // 画像の表示 削除ボタンの配置
    reader.onload = function(e) {
      var btn_wrapper = $('<div class="btn_wrapper"><div class="btn edit">編集</div><div class="btn delete">削除</div></div>');
      img.append(btn_wrapper);
      img.find('img').attr({
        src: e.target.result
      })
      // サムネのリサイズ
     $('img').css({'width': '100px', 'height': '100px', 'margin': '0 0 10px 10px'})
     $('.btn_wrapper').css({'display': 'flex'})
     $('.upload-image').css({'display': 'none'})
    }
   
    reader.readAsDataURL(file);
    images.push(img);

    if(images.length >= 5) {
      dropzone2.css({
        'display': 'block'
      })
      dropzone.css({
        'display': 'none'
      })
      $.each(images, function(index, image) {
        image.attr('data-image', index);
        preview2.append(image);
        dropzone2.css({
          'width': `calc(100% - (100px * ${images.length - 5}))`
        })
      })
      if(images.length == 9) {
        dropzone2.find('p').replaceWith('<i class="fa fa-camera"></i>')
      }
    } else {
        $('#preview').empty();
        $.each(images, function(index, image) {
          image.attr('data-image', index);
          preview.append(image);
        })
        dropzone.css({
          'width': `calc(100% - (100px * ${images.length}))`
        })
      }
      if(images.length == 4) {
        dropzone.find('p').replaceWith('<i class="fa fa-camera"></i>')
      }
    if(images.length == 10) {
      dropzone2.css({
        'display': 'none'
      })
      return;
    }
    var new_image = $(`<input multiple= "multiple" class="upload-image" data-image= ${images.length} type="file" id="upload-image" name= "item[images][images][]">`);
    input_area.prepend(new_image);
  });

  $(document).on('click', '.delete', function() {
    var target_image = $(this).parent().parent();
    $.each(inputs, function(index, input){
      if ($(this).data('image') == target_image.data('image')){
        $(this).remove();
        target_image.remove();
        var num = $(this).data('image');
        images.splice(num, 1);
        inputs.splice(num, 1);
        if(inputs.length == 0) {
          $('input[type= "file"].upload-image').attr({
            'data-image': 0
          })
        }
      }
    })
    $('input[type= "file"].upload-image:first').attr({
      'data-image': inputs.length
    })
    $.each(inputs, function(index, input) {
      var input = $(this)
      input.attr({
        'data-image': index
      })
      $('input[type= "file"].upload-image:first').after(input)
    })
    if (images.length >= 5) {
      dropzone2.css({
        'display': 'block'
      })
      $.each(images, function(index, image) {
        image.attr('data-image', index);
        preview2.append(image);
      })
      dropzone2.css({
        'width': `calc(100% - (100px * ${images.length - 5}))`
      })
      if(images.length == 9) {
        dropzone2.find('p').replaceWith('<i class="fa fa-camera"></i>')
      }
      if(images.length == 8) {
        dropzone2.find('i').replaceWith('<p>ココをクリックしてください</p>')
      }
    } else {
      dropzone.css({
        'display': 'block'
      })
      $.each(images, function(index, image) {
        image.attr('data-image', index);
        preview.append(image);
      })
      dropzone.css({
        'width': `calc(100% - (100px * ${images.length}))`
      })
    }
    if(images.length == 4) {
      dropzone2.css({
        'display': 'none'
      })
    }
    if(images.length == 3) {
      dropzone.find('i').replaceWith('<p>ココをクリックしてください</p>')
    }
  })
  // 入力した金額の計算機能
  $(function(){
    var maxNum = 9999999; // 入力できる上限
    var tagInput = $('#jsNum'); // 入力対象のinputタグID名
    var tagOutput = $('#jsFee'); // 出力対象のinputタグID名(手数料)
    var tagOutput2 = $('#jsProfit') //出力対象の (利益)
    tagInput.on('change', function() {
      var str = $(this).val();
      var num = Number(str.replace(/[^0-9]/g, '')); // 整数以外の文字列を削除
      if(num == 0) {
        num = '';
      } else if (num > maxNum) { // 上限を超える個数を入力した場合
        num = '';
      }
      $(this).val(num);
      if(num != 0) {
        var F_product = num * 0.1;
        var Fee = Math.floor(F_product)
        tagOutput.val(Fee);
        var P_product = num * 0.9;
        var Profit =Math.floor(P_product)
        tagOutput2.val(Profit)
      }
    });
  });

});