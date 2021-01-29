describe "visit_test", type: :feature, js: true do
  
  it "can pay with BTC after signup success" do
    visit '/signup_success.html'
  end

  it "can visit programas page" do
    visit '/programas.html'
  end
  
end
