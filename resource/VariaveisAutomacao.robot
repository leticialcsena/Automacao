*** Variables***
#Acessos
${URL}                          https://seubarriga.wcaquino.me/login
${URL_posLogin}                 https://seubarriga.wcaquino.me/logar

##########
### LOGIN E NOVO USUÁRIO
#Menu, campos e botões
${input_emailUsuario_name}      name=email
${input_senha_name}             name=senha
${input_nomeUsuario_name}       name=nome
${botao_entrar_xpath}           xpath=//button[@type='submit'][contains(.,'Entrar')]
${menu_novoUsuario_xpath}       xpath=//a[@href='/cadastro'][contains(.,'Novo usuário?')]
${botao_CadastrarNovoUsuario}   xpath=//input[contains(@type,'submit')]
#Dados utilizados
${email}                        euleticiasena@gmail.com
${senha}                        ts16rh
${emailInvalido}                euleticiasena@gmailcom
${senhaInvalida}                123456
${nomeNovoUsuario}              Seu Madruga
${emailNovoUsuario}             madruga.seu@leticiiiia.com.br
#Mensagens de login
${mensagemLoginErrado}          Problemas com o login do usuário
${mensagemLoginSemDados1}       Email é um campo obrigatório
${mensagemLoginSemDados2}       Senha é um campo obrigatório
# Mensagens de Novo usuário
${mensagemUsuarioSucesso}       Usuário inserido com sucesso
${mensagemUsuarioErro}          Endereço de email já utilizado
###########################################################################################

### CRIAR MOVIMENTAÇÃO
# Menu, campos e botões
${menu_criarMovimentacao}       xpath=//a[@href='/movimentacao'][contains(.,'Criar Movimentação')]
${select_tipoMovimentacao}      name=tipo
${tipoReceita}                  Receita
${tipoDespesa}                  Despesa
${input_dataMovimentacao}       name=data_transacao
${input_dataPagamento}          name=data_pagamento
${input_descricao}              name=descricao
${input_interessado}            name=interessado
${input_valor}                  name=valor
${select_conta}                 name=conta
${select_situacao}              status
${botao_salvar}                 xpath=//button[@type='submit'][contains(.,'Salvar')]
# Dados utilizados
${dataMovimentacao}             15/01/2021
${dataMovimentacaoErrada}       18/02/2022
${dataMovimentacaoInvalida}     abc
${dataDoPagamento}              20/01/2020
${dataDoPagamentoInvalida}      def
${descricaoRPaga}               ContaRPaga
${descricaoRPendente}           ContaRPendente
${descricaoDPaga}               ContaDpaga
${descricaoDPendente}           ContaDPendente
${interessado}                  Leticia Warren
${valor}                        100
${valorInvalido}                ghi
${conta1}                       Aluguel
${conta2}                       Condomínio
${situacaoPaga}                 status_pago
${situacaoPendente}             status_pendente
# Mensagens
${mensagemMovSucesso}           Movimentação adicionada com sucesso!
${mensagemContaObrigatoria}     Conta é obrigatório
${mensagemDataMovInvalida}      Data da Movimentação inválida (DD/MM/YYYY)
${mensagemDataPagInvalida}      Data do pagamento inválida (DD/MM/YYYY)
${mensagemValorInvalido}        Valor deve ser um número
${mensagemDataMovFutura}        Data da Movimentação deve ser menor ou igual à data atual

####################################################################

### RESUMO MENSAL
# Menu, campos e  botões
${menu_resumoMensal}            xpath=//a[@href='/extrato'][contains(.,'Resumo Mensal')]
${select_mes}                   xpath=//select[contains(@id,'mes')]
${select_ano}                   xpath=//select[contains(@id,'ano')]
${botao_deletarMovimentacao1}   xpath=(//span[contains(@class,'glyphicon glyphicon-remove-circle')])[1]
${botao_deletarMovimentacao2}   xpath=(//span[contains(@class,'glyphicon glyphicon-remove-circle')])[2]
${botao_deletarMovimentacao3}   xpath=(//span[contains(@class,'glyphicon glyphicon-remove-circle')])[3]
${botao_buscar}                 xpath=//input[contains(@type,'submit')]
# Dados utilizados
${mesFev}                       Fevereiro
${mesJan}                       Janeiro
${ano2020}                      2020
${ano2021}                      2021
${pendente}                     Pendente
${pago}                         Pago

####################################################################

### CONTAS
# Menus, campos e botões
${menu_contas}                  xpath=//a[@href='/'][contains(.,'Contas')]
${submenu_adicionar}            xpath=//a[@href='/addConta'][contains(.,'Adicionar')]
${input_nomeNovaConta}          xpath=//input[contains(@id,'nome')]
${submenu_listar}               xpath=//a[@href='/contas'][contains(.,'Listar')]
${botao_editarConta3}           xpath=(//span[contains(@class,'glyphicon glyphicon-edit')])[3]
${botao_excluirConta3}          xpath=(//span[contains(@class,'glyphicon glyphicon-remove-circle')])[3]
${botao_excluirConta2}          xpath=(//span[contains(@class,'glyphicon glyphicon-remove-circle')])[2]
${botao_excluirConta1}          xpath=(//span[contains(@class,'glyphicon glyphicon-remove-circle')])[1]
# Dados utilizados
${conta3}                       Warren
${conta4}                       Reserva de Emergência
# Mensagens
${mensagemContaSucesso}         Conta adicionada com sucesso!
${mensagemContaExistente}       Já existe uma conta com esse nome!
${mensagemContaAlterada}        Conta alterada com sucesso!
${mensagemContaExcluida}        Conta removida com sucesso!
${mensagemContaEmUso}           Conta em uso na movimentações

####################################################################

### HOME
# Dados utilizados
${home_conta}                   Aluguel
${home_saldo}                   -100
#Botões
${botao_Sair}                   xpath=//a[@href='/logout'][contains(.,'Sair')]
