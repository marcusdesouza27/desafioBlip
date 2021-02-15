Feature: Cadastrar Usuario

     Background: 
     Given que o usuario está na tela de Cadastro de usuario

@mandatoryFields
Scenario: Registro - campos obrigatorios
     When o usuario não preenche todos os dados obrigatorios
     And submete o formulário de Cadastro
     Then visualiza uma mensagem para preencher os campos obrigatorios