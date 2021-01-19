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
end
