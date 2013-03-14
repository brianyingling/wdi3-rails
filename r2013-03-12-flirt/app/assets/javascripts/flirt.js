//$('#register_btn').click(show_register_form);
//$('#register_cancel_btn').click(remove);

function remove(){
  $(this).remove();
}

function cancel_subscriber_form() {
  $('#user_form').empty();
}

function cancel_login_form() {
  $('#login_form').empty();
}