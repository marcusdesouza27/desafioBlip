class CadastroUsuario < SitePrism::Page
    element :email, '#Email'
    element :password, '#Password'
    element :phoneNumber, '#PhoneNumber'
    element :empresaSite, '#CompanySite'
    element :tamanhoEmpresa, 'input[class*="bp-c-rooftop"]'
    element :checkboxTermos, '.checkbox__icon'
    element :submitButton, '#submitButton'
    element :empresaTamFirstOpt, 'li[data-value="Band1_4"]'

    def criausuario(newemail, pwd, site)
        email.send_keys(newemail)
        password.send_keys(pwd)
        phoneNumber.send_keys(' ')
        empresaSite.click
        empresaSite.send_keys(site)
        tamanhoEmpresa.click
        wait_until_empresaTamFirstOpt_visible
        empresaTamFirstOpt.click
    end

    def clickCadastrar
        submitButton.click
    end

end