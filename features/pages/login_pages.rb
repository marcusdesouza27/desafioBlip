class LoginPage < SitePrism::Page
    element :inputEmail, '#email'
    element :inputPassword, '#password'
    element :btnEntrar, '#blip-login'
    element :btnCadastrar, '#blip-register'
    element :linkEsqueceuSenha, '#login-forgot-password'

    def preencheLogin(email, pwd)
        inputEmail.send_keys(email)
        inputPassword.send_keys(pwd)       
    end

    def clickEntrar
        wait_until_btnEntrar_visible
        btnEntrar.click
    end

    def acessarCadastro
        btnCadastrar.click
    end
    
end