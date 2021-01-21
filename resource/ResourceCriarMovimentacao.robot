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
Clicar no menu criar movimentação
  Click Element                        ${menu_criarMovimentacao}
Selecionar o tipo de movimentação "Receita"
  Select From List By Label            ${select_tipoMovimentacao}           ${tipoReceita}
Selecionar o tipo de movimentação "Despesa"
  Select From List By Label            ${select_tipoMovimentacao}           ${tipoDespesa}
Preencher os campos de texto obrigatórios
  Input Text                           ${input_dataMovimentacao}            ${dataMovimentacao}
  Input Text                           ${input_dataPagamento}               ${dataDoPagamento}
  Input Text                           ${input_interessado}                 ${interessado}
  Input Text                           ${input_valor}                       ${valor}
Selecionar primeira conta
  Select From List By Index            ${select_conta}                      0
Selecionar segunda conta
  Select From List By Index            ${select_conta}                      1
Selecionar a situação "Pago"
  Select Radio Button                  ${select_situacao}                   ${situacaoPaga}
Selecionar a situação "Pendente"
  Select Radio Button                  ${select_situacao}                   ${situacaoPendente}
Clicar no botão salvar
  Click Element                        ${botao_salvar}
Conferir mensagem de sucesso
  Page Should Contain                  ${mensagemMovSucesso}
Clicar no menu Contas
  Click Element                        ${menu_contas}
Clicar no submenu Adicionar
  Click Element                        ${submenu_adicionar}
Conferir se nova conta foi salva com sucesso
   Page Should Contain                 ${mensagemContaSucesso}


# Caso de Teste 01
Conferir mensagem de erro de conta obrigatória
  Page Should Contain                  ${mensagemContaObrigatoria}

# Caso de Teste 02
Preencher o campo Nome com o nome da conta1
  Input Text                           ${input_nomeNovaConta}                ${conta1}

# Caso de Teste 03
Preencher o campo Nome com o nome da conta2
  Input Text                           ${input_nomeNovaConta}                ${conta2}

# Caso de Teste 04
Preencher descrição de Receita Paga
  Input Text                           ${input_descricao}                   ${descricaoRPaga}
Conferir se movimentação receita paga foi criada no menu Resumo Mensal
  Click Element                        ${menu_resumoMensal}
  Page Should Contain                  ${descricaoRPaga}

# Caso de Teste 05
Preencher descrição de Receita Pendente
  Input Text                           ${input_descricao}                   ${descricaoRPendente}
Conferir se movimentação receita pendente foi criada no menu Resumo Mensal
  Click Element                        ${menu_resumoMensal}
  Page Should Contain                  ${descricaoRPendente}

# Caso de Teste 06
Preencher descrição de Despesa Paga
  Input Text                           ${input_descricao}                   ${descricaoDPaga}
Conferir se movimentação despesa paga foi criada no menu Resumo Mensal
  Click Element                        ${menu_resumoMensal}
  Page Should Contain                  ${descricaoDPaga}

# Caso de Teste 07
Preencher descrição de Despesa Pendente
  Input Text                           ${input_descricao}                   ${descricaoDPendente}
Conferir se movimentação despesa pendente foi criada no menu Resumo Mensal
  Click Element                        ${menu_resumoMensal}
  Page Should Contain                  ${descricaoDPendente}

# Caso de Teste 08
Preencher campos obrigatórios com dados inválidos
  Input Text                           ${input_dataMovimentacao}            ${dataMovimentacaoInvalida}
  Input Text                           ${input_dataPagamento}               ${dataDoPagamentoInvalida}
  Input Text                           ${input_valor}                       ${valorInvalido}
Conferir mensagem de campos inválidos
  Page Should Contain                  ${mensagemDataMovInvalida}
  Page Should Contain                  ${mensagemDataPagInvalida}
  Page Should Contain                  ${mensagemValorInvalido}

# Caso de Teste 09
Preencher data de movimentação com data futura
  Input Text                           ${input_dataMovimentacao}            ${dataMovimentacaoErrada}
Conferir mensagem de data de movimentação futura
  Page Should Contain                  ${mensagemDataMovFutura}
