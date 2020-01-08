// $('body').on('click', '.remove_image', function () {
//   var filesArray = $('.item_images_hidden').val().split(',');
//   var id = $(this).closest('.select_image').data('id');

//   // 選択されたidとfilesArrayの要素が一致すればfilesArrayから削除
//   $.each(filesArray, function (index, file) {
//     if(id === Number(file)){
//       filesArray.splice(index, 1);
//     };
//     // .item_images_hiddenのval()を更新
//     $('.item_images_hidden').val(filesArray);
//   });

//   // 選択されたidを持つinput[type="file"]を削除
//   $('.upload_files').each(function (index, element) {
//     if(!$(element).data('id')){
//      return true;
//     }     
//     if($(element).data('id') === Number(id)) {
//       $(element).remove();
//     }
//   });

//   // .select_imageを削除
//   $(this).closest('.select_image').remove();
// });


$(function(){
  $('.select.image').on('click', '#d-btn', function(){
    var image_number = $(this).parent()[0];
    $(this).parent().remove();
  });
});

$(function(){
  $('.select.image').on('click', function(){
    var num = $(this).closest('.select.image').data('numbder')
    // console.log(num)
    // debugger
    $('.dropzone-area').append(`<input value=${num} type="hidden" name="item[remove_images][]"></input>`);
  });
});

/* // $('#image-box').on('click', '.js-remove', function() {
//   const targetIndex = $(this).parent().parent().data('index');
//   console.log(targetIndex);
//   // 該当indexを振られているチェックボックスを取得する
//   const hiddenCheck = $(`input#${targetIndex}.hidden-destroy`);
//   // もしチェックボックスが存在すればチェックを入れる
//   if (hiddenCheck) hiddenCheck.prop('checked', true);
//   $(this).parent().parent().remove();
//   $(`div[data-index="${targetIndex}"]`).remove();
//   // 画像入力欄が0個にならないようにしておく
//   // if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
// }); */