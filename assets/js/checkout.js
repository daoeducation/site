var initCheckout = function(api_url, program){
  var handleResult = function (result) {
    if (result.error) {
      var displayError = document.getElementById('error-message');
      displayError.textContent = result.error.message;
    }
  };

  var createCheckoutSession = function(token) {
    return fetch(`${api_url}/stripe/checkout_sessions`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ recaptcha_token: token, program: program })
    }).then(function (result) {
      return result.json();
    });
  };

  $(function(){
    fetch(`${api_url}/public_config`)
      .then(function (result) { return result.json(); })
      .then(function (config) {
        window.recaptcha_loaded = function(){
          grecaptcha.ready(function() {
            grecaptcha.execute(config.recaptcha_key, {action: 'submit'}).then(function(token) {
              createCheckoutSession(token).then(function(data) {
                var stripe = Stripe(config.stripe_key);
                stripe.redirectToCheckout({sessionId: data.id }).then(handleResult);
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
