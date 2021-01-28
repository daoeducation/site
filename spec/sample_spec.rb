
  it "can pay with paypal after signup success" do
    visit '/signup_success.html'

    find("#paypal_button").click
    expect(page).to have_content "Pagar con PayPal"
  end
