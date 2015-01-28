$(document).ready(function() {

  $('form#auth-login').submit(function(event) {
    event.preventDefault();
    $('form#login').show('slow');
    $('#auth-buttons').toggle();
  })

  $('form#auth-signup').submit(function(event) {
    event.preventDefault();
    $('form#signup').show('slow');
    $('#auth-buttons').toggle();
  })

  $('form#current-expenditure').submit(function(event) {
    event.preventDefault();

    $form = $(event.target)

    $.ajax({
      url: $form.attr('action'),
      type: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('form#current-expenditure').hide();
      $('#expenditure-container').empty().append(response);
      $('form#target-weight').show();
    })
  })

  $('form#target-weight').submit(function(event) {
    event.preventDefault();

    $form = $(event.target);

    $.ajax({
      url: $form.attr('action'),
      type: $form.attr('method'),
      data: $form.serialize()
    }).done(function(response) {
      console.log(response);
      $('form#target-weight').hide();
      $('#goal-container').empty().append(response);
    });
  });

});
