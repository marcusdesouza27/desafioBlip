Before do
    Capybara.page.driver.browser.manage.window.maximize
    visit '/'
    
    @myaccount = MyaccountPage.new
    @login = LoginPage.new
    @cadastro = CadastroUsuario.new

   
end

After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")

    closeSession()
end