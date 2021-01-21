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
Clicar no menu Resumo Mensal
  Click Element                        ${menu_resumoMensal}
Clicar no botão Buscar
  Click Element                        ${botao_buscar}

# Caso de Teste 01
Selecionar mês de Fevereiro
  Select From List By Label            ${select_mes}                        ${mesFev}
Selecionar ano de 2020
  Select From List By Label            ${select_ano}                        ${ano2020}
Confirmar que não tem registro
  Page Should Not Contain              ${Pendente}
  Page Should Not Contain              ${Pago}

# Caso de Teste 02
Selecionar mês de Janeiro
  Select From List By Label            ${select_mes}                        ${mesJan}
Selecionar ano de 2021
  Select From List By Label            ${select_ano}                        ${ano2021}
Verificar que existe pelo menos um registro
  Page Should Contain                  ${Pendente}
  Page Should Contain                  ${Pago}

# Caso de Teste 03
Deletar movimentação
  Click Element                        ${botao_deletarMovimentacao1}
