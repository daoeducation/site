describe "home_visit_test", type: :feature, js: true do

  it "check link about_us" do
  visit '/about_us.html'
  end

  it "check link profesores" do
  visit '/profesores.html'
  end

    it "check link programas" do
    visit '/programas.html'
  end

  it "check link signup_sucess" do
    visit '/signup_success.html'
  end

end


describe "profesores_visit_test", type: :feature, js: true do

  it "check Santi Siri profile" do
  visit '/profesores/siri_santiago/'
  end

  it "check Nubis Bruno profile" do
  visit '/profesores/bruno_nubis/'
  end

    it "check Gus Segovia profile" do
    visit '/profesores/segovia_gustavo/'
  end

  it "check Alex Viñas profile" do
    visit '/profesores/viñas_alex/'
  end

  it "check Alejandro Gómez profile" do
    visit '/profesores/alejandro_gomez/'
  end

  it "check Pol Bordas profile" do
    visit '/profesores/bordas_pol/'
  end

end

describe "programas_visit_test", type: :feature, js: true do

  it "check Coding Bootcamp page" do
  visit '/programas/coding_bootcamp/'
  end

  it "check Ethereum & Bitcoin — From Zero to Hero page" do
  visit '/programas/curso_genesis/'
  end

end
