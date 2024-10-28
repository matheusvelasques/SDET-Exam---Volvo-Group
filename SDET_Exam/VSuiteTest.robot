***Settings***
Documentation         Suite dos testes de login

Library               Selenium2Library
Resource              keywords.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Cenário: Login com sucesso
    Dado que acesso a página inicial
    Quando submeto o login "standard_user" e a senha "secret_sauce"
    Então sou autenticado com sucesso
    Add item no carrinho
    Verificar item no carrinho
    Preencher informações pessoais
    Fazer checkout
    
Cenário: Login incorreto
    Dado que acesso a página inicial
    Quando submeto o login "teste" e a senha "teste"
    Então devo ver a mensagem "Epic sadface: Username and password do not match any user in this service"

Cenário: Login sem dados informados
    Dado que acesso a página inicial
    Quando não submeto o login e a senha
    Então devo ver a mensagem "Epic sadface: Username is required"