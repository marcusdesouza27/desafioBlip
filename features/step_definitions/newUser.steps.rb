
  Given("que o usuario está na tela de Cadastro de usuario") do
    @login.acessarCadastro()
  end
  
  When("o usuario não preenche todos os dados obrigatorios") do
    @name = Faker::Name.male_first_name
    @email = Faker::Internet.free_email
    @password = "teste#{Faker::Number.number(digits: 4)}"
    @newSite = Faker::Internet.url
    @cadastro.criausuario(@email, @password, @newSite)
  end
  When("submete o formulário de Cadastro") do
    @cadastro.clickCadastrar()
  end

  Then("visualiza uma mensagem para preencher os campos obrigatorios") do
    expect(page).to have_content(MESSAGE_ASSERT['phoneError'])
  end