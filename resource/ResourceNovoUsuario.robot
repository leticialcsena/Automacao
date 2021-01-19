*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/VariaveisAutomacao.robot

***Variables***
${BROWSER}    firefox

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser    about:blank    ${BROWSER}

Fechar navegador
  Close Browser


### Commons
Acessar a página de login
  Go To                                  ${URL}
Clicar no menu Novo Usuário
  Click Element                          ${menu_novoUsuario_xpath}
Digitar o nome do novo usuário
  Input Text                             ${input_nomeUsuario_name}       ${nomeNovoUsuario}
Digitar a senha do novo usuário
  Input Text                             ${input_senha_name}              ${senha}
Clicar no botão cadastrar
  Click Element                          ${botao_CadastrarNovoUsuario}

# Caso de Teste 01
Digitar o e-mail do novo usuário
  Input Text                             ${input_emailUsuario_name}       ${emailNovoUsuario}
Conferir mensagem de sucesso
  Page Should Contain                    ${mensagemUsuarioSucesso}

# Caso de Teste 02
Digitar o e-mail já existente do novo usuário
  Input Text                             ${input_emailUsuario_name}       ${email}
Conferir mensagem de Erro
  Page Should Contain                    ${mensagemUsuarioErro}
