Feature: Login

Background: 
    Given  que o usuário está na tela de Login

@validLogin
Scenario:  ValidLogin
    When o usuario informa o login e senha validos
    And submete os Given  para o login
    Then o usuario visualiza a area logada do site