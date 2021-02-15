Given("que o usuário está na tela de Login") do
  visit '/'
end

When("o usuario informa o login e senha validos") do
    @login.preencheLogin(DATA['email'], DATA['password'])
  end
  
  When("submete os Given  para o login") do
    @login.clickEntrar()
  end
  
  Then("o usuario visualiza a area logada do site") do
    # binding pry
    expect(@myaccount.loginInfo).to have_content(DATA['nome'])
  end