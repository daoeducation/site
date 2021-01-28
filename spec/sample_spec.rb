describe "payment_pages", type: :feature, js: true do
  it "can pay for the zero-to-hero program" do
    visit '/payments/zero_to_hero.html'

    expect(page).to have_selector ".ProductSummary-info", wait: 30
    expect(page).to have_content "Zero to Hero"
  end

end
