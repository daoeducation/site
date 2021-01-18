var initCheckout = function(api_url, program){
  var handleResult = function (result) {
    if (result.error) {
      var displayError = document.getElementById('error-message');
      displayError.textContent = result.error.message;
    }
  };

  $(function(){
    $.get(`${api_url}/public_config`, function(config){
      $.post(
        `${api_url}/stripe/checkout_sessions`,
        JSON.stringify({ recaptcha_token: 'disabled', program: program })
      ).done(function(data){
        Stripe(config.stripe_key).redirectToCheckout({sessionId: data.id }).then(handleResult);
      });
    })
  });
}
