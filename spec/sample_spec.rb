  it "can pay with BTC after signup success" do
    visit '/signup_success.html'

    find("#btc_button").click
 

  end

  it "can pay with paypal after signup success" do
    visit '/signup_success.html'

    find("#paypal_button").click
   
  end
