$(function(){
  $('.select.image').on('click', '#d-btn', function(){
    var image_number = $(this).parent()[0];
    $(this).parent().remove();
  });
});

$(function(){
  $('.select.image').on('click', function(){
    var num = $(this).closest('.select.image').data('numbder')
    $('.dropzone-area').append(`<input value=${num} type="hidden" name="item[remove_images][]"></input>`);
  });
});
