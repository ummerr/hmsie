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

});
