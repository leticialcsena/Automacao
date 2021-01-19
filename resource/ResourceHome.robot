*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/VariaveisAutomacao.robot

***Variables***
${BROWSER}    firefox

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser    about:blank            ${BROWSER}

Fechar navegador
  Close Browser

# Caso de Teste 01
Fazer login
  Go To                                ${URL}
  Input Text                           ${input_emailUsuario_name}           ${email}
  Input Text                           ${input_senha_name}                  ${senha}
  Click Element                        ${botao_entrar_xpath}
Verificar se o saldo é igual a -100
  Page Should Contain                  ${home_conta}
  Page Should Contain                  ${home_saldo}
Sair do site
  Click Element                        ${botao_Sair}
