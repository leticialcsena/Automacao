*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/VariaveisAutomacao.robot

***Variables***
${BROWSER}                               firefox

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser    about:blank            ${BROWSER}

Fechar navegador
  Close Browser

### Commons
Acessar a página de login
  Go To                                  ${URL}
Digitar o e-mail válido no campo de E-mail
  Input Text                             ${input_emailUsuario_name}            ${email}
Digitar a senha válida no campo senha
  Input Text                             ${input_senha_name}                   ${senha}
Clicar no botão Entrar
  Click Element                          ${botao_entrar_xpath}
Conferir mensagem de erro
  Page Should Contain                    ${mensagemLoginErrado}


# Caso de Teste 01
Conferir se o login foi realizado com sucesso
  Wait Until Page Contains               Home
  Location Should Be                     ${URL_posLogin}

# Caso de Teste 02
Digitar o e-mail inválido no campo de E-mail
  Input Text                             ${input_emailUsuario_name}            ${emailInvalido}

# Caso de Teste 03
Digitar a senha inválida no campo senha
  Input Text                             ${input_senha_name}                   ${senhaInvalida}

# Caso de Teste 04
Conferir se aparecem as mensagens de erro
  Page Should Contain                   ${mensagemLoginSemDados1}
  Page Should Contain                   ${mensagemLoginSemDados2}
