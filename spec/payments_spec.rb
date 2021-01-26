describe "payment_pages", type: :feature, js: true do
  it "can pay for the zero-to-hero program" do
    visit '/payments/zero_to_hero.html'

    expect(page).to have_selector ".ProductSummary-info", wait: 30
    expect(page).to have_content "Zero to Hero"
  end

  it "can pay for the coding bootcamp program" do
    visit '/payments/coding_bootcamp.html'

    expect(page).to have_selector ".ProductSummary-info", wait: 30
    expect(page).to have_content "Coding Bootcamp"
  end

  it "can pay with BTC after signup success" do
    visit '/signup_success.html'

    find("#btc_button").click
    expect(page).to have_content "Un servicio de Bitex"

  end

  it "can pay with paypal after signup success" do
    visit '/signup_success.html'

    find("#paypal_button").click
    expect(page).to have_content "Pagar con PayPal"
  end

  it "can pay with stripe after signup success" do
    visit '/signup_success.html'

    find("#stripe_button").click
    expect(page).to have_content "Pago con tarjeta"
  end


end
