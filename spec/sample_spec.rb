describe "payment_pages", type: :feature, js: true do
  it "can pay for the zero-to-hero program" do


  it "can pay with BTC after signup success" do
    visit '/signup_success.html'

    find("#btc_button").click
 

  end

  it "can pay with paypal after signup success" do
    visit '/signup_success.html'

    find("#paypal_button").click
   
  end

end
