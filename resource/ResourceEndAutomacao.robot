*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/VariaveisAutomacao.robot

***Variables***
${BROWSER}                             firefox

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser    about:blank          ${BROWSER}

Fechar navegador
  Close Browser

### Commons
Fazer login
  Go To                                ${URL}
  Input Text                           ${input_emailUsuario_name}           ${email}
  Input Text                           ${input_senha_name}                  ${senha}
  Click Element                        ${botao_entrar_xpath}


# Caso de Teste 01
Clicar no menu Resumo Mensal
  Click Element                        ${menu_resumoMensal}
Deletar primeira movimentação
  Click Element                        ${botao_deletarMovimentacao1}
Deletar segunda movimentação
  Click Element                        ${botao_deletarMovimentacao1}
Deletar terceira movimentação
  Click Element                        ${botao_deletarMovimentacao1}

# Caso de Teste 02
Clicar no menu Contas
  Click Element                        ${menu_contas}
Clicar no submenu Listar
  Click Element                        ${submenu_listar}
Deletar primeira conta
  Click Element                        ${botao_excluirConta1}
Deletar segunda conta
  Click Element                        ${botao_excluirConta1}

# Caso de Teste 03
Garantir que não possui conta de aluguel na home
  Page Should Not Contain              ${conta1}
  Page Should Not Contain              ${home_saldo}
