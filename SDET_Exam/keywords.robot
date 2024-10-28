***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação dos comportamentos

***Keywords***
Dado que acesso a página inicial
    Go To       http://saucedemo.com

Quando submeto o login "${login}" e a senha "${senha}"
    Input Text          id:user-name            ${login}
    Input Text          id:password             ${senha}
    Click Element       id:login-button       

Quando não submeto o login e a senha
    Click Element             id:login-button

Então sou autenticado com sucesso
    Wait Until Page Contains Element           id:header_container 

Então devo ver a mensagem "${mensagem}"
    Wait Until Page Contains                    ${mensagem}   

Add item no carrinho
    Click Element       id:add-to-cart-sauce-labs-backpack
    Click Element       id:shopping_cart_container

Verificar item no carrinho
    ${titulo}                   Get Text        xpath=//*[@id="header_container"]/div[2]/span
    Should Contain              ${titulo}       Your Cart
    Click Element               id:checkout

Preencher informações pessoais
    ${titulo_checkout}          Get Text        xpath=//*[@id="header_container"]/div[2]/span
    Should Contain              ${titulo_checkout}       Checkout: Your Information
    Input Text                  id:first-name   Matheus Aron
    Input Text                  id:last-name    Velasques
    Input Text                  id:postal-code  80320050

Fazer checkout
    Click Element               id:continue
    Click Element               id:finish
    Click Element               id:back-to-products

# Hooks
Open Session
    Open Browser                about:blank       chrome
    Maximize Browser Window
    
Close Session
    Capture Page Screenshot
    Close Browser