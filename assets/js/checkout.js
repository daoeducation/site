var initCheckout = function(api_url, program){
  var handleResult = function (result) {
    if (result.error) {
      var displayError = document.getElementById('error-message');
      displayError.textContent = result.error.message;
    }
  };

  $(function(){
    fetch(`${api_url}/public_config`)
      .then(function (result) { return result.json(); })
      .then(function (config) {
        window.recaptcha_loaded = function(){
          grecaptcha.ready(function() {
            grecaptcha.execute(config.recaptcha_key, {action: 'submit'}).then(function(token) {
              $.post(
                `${api_url}/stripe/checkout_sessions`,
                JSON.stringify({ recaptcha_token: token, program: program })
              ).done(function(data){
                Stripe(config.stripe_key).redirectToCheckout({sessionId: data.id }).then(handleResult);
              });
            });
          });
        }

        $('<script>')
          .attr('type', 'text/javascript')
          .attr('async', '')
          .attr('defer', '')
          .attr('src', "https://www.google.com/recaptcha/api.js?onload=recaptcha_loaded&render=" + config.recaptcha_key)
          .appendTo('body');
      })
  });
}
