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
Fazer login
  Go To                                ${URL}
  Input Text                           ${input_emailUsuario_name}           ${email}
  Input Text                           ${input_senha_name}                  ${senha}
  Click Element                        ${botao_entrar_xpath}
Clicar no menu contas
  Click Element                        ${menu_contas}
Clicar no submenu Adicionar
  Click Element                        ${submenu_adicionar}
Preencher o campo Nome com o nome da conta3
  Input Text                           ${input_nomeNovaConta}               ${conta3}
Clicar no botão salvar
  Click Element                        ${botao_salvar}
Conferir se nova conta foi salva com sucesso
   Page Should Contain                 ${mensagemContaSucesso}
Clicar no submenu Listar
    Click Element                      ${submenu_listar}

# Caso de Teste 02
Conferir mensagem de conta existente
  Page Should Contain                  ${mensagemContaExistente}

# Caso de Teste 03
Conferir se a conta3 está listada
  Page Should Contain                  ${conta3}

# Caso de Teste  04
Clicar em Editar
  Click Element                        ${botao_editarConta3}
Alterar nome da conta3 para conta 04
  Input Text                           ${input_nomeNovaConta}               ${conta4}
Conferir mensagem de edição com sucesso
  Page Should Contain                  ${mensagemContaAlterada}

# Caso de Teste 05
Clicar em Excluir na conta4
  Click Element                        ${botao_excluirConta3}
Conferir mensagem de exclusão com sucesso
  Page Should Contain                  ${mensagemContaExcluida}

# Caso de Teste 06
Clicar em Excluir na conta1
  Click Element                        ${botao_excluirConta1}
Conferir mensagem de erro de exclusão de conta
  Page Should Contain                  ${mensagemContaEmUso}
