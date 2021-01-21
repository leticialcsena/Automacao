*** Settings ***
Resource       ../resource/ResourceContas.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Adicionar conta
  Fazer login
  Clicar no menu contas
  Clicar no submenu Adicionar
  Preencher o campo Nome com o nome da conta3
  Clicar no botão salvar
  Conferir se nova conta foi salva com sucesso

Caso de Teste 02: Adicionar conta com nome já existente
  Fazer login
  Clicar no menu contas
  Clicar no submenu Adicionar
  Preencher o campo Nome com o nome da conta3
  Clicar no botão salvar
  Conferir mensagem de conta existente

Caso de Teste 03: Listar conta
  Fazer login
  Clicar no menu contas
  Clicar no submenu Listar
  Conferir se a conta3 está listada

Caso de Teste 04: Editar conta
  Fazer login
  Clicar no menu contas
  Clicar no submenu Listar
  Clicar em Editar
  Alterar nome da conta3 para conta 04
  Clicar no botão salvar
  Conferir mensagem de edição com sucesso

Caso de Teste 05: Excluir conta
  Fazer login
  Clicar no menu contas
  Clicar no submenu Listar
  Clicar em Excluir na conta4
  Conferir mensagem de exclusão com sucesso

Caso de Teste 06: Excluir conta em uso
  Fazer login
  Clicar no menu contas
  Clicar no submenu Listar
  Clicar em Excluir na conta1
  Conferir mensagem de erro de exclusão de conta
