describe "sample", type: :feature, js: true do
  it "has the page title" do
    visit '/'
    # `binding.pry` is useful for crafting the right selector
    # or checking the actual state of the page
    binding.pry # test will pause here
    expect(find('.profesores').text).to eq('Nuestros Profesores')
    expect(find('.programas').text).to eq('Programas')
    expect(find('.prueba_inexistente').text).to eq('Esta section no existe')
    expect(find('.about_us').text).to eq('DAO Edcation')


  end
end
