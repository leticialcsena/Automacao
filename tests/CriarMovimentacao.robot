*** Settings ***
Resource       ../resource/ResourceCriarMovimentacao.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Criar movimentação sem conta cadastrada
    Fazer login
    Clicar no menu criar movimentação
    Preencher os campos de texto obrigatórios
    Clicar no botão salvar
    Conferir mensagem de erro de conta obrigatória

Caso de Teste 02: Criar conta1
    Fazer login
    Clicar no menu Contas
    Clicar no submenu Adicionar
    Preencher o campo Nome com o nome da conta1
    Clicar no botão salvar
    Conferir se nova conta foi salva com sucesso

Caso de Teste 03: Criar conta2
    Fazer login
    Clicar no menu Contas
    Clicar no submenu Adicionar
    Preencher o campo Nome com o nome da conta2
    Clicar no botão salvar
    Conferir se nova conta foi salva com sucesso

Caso de Teste 04: Criar movimentação do tipo receita paga
    Fazer login
    Clicar no menu criar movimentação
    Selecionar o tipo de movimentação "Receita"
    Preencher descrição de Receita Paga
    Preencher os campos de texto obrigatórios
    Selecionar primeira conta
    Selecionar a situação "Pago"
    Clicar no botão salvar
    Conferir mensagem de sucesso
    Conferir se movimentação receita paga foi criada no menu Resumo Mensal

Caso de Teste 05: Criar movimentação do tipo receita pendente
    Fazer login
    Clicar no menu criar movimentação
    Selecionar o tipo de movimentação "Receita"
    Preencher descrição de Receita Pendente
    Preencher os campos de texto obrigatórios
    Selecionar segunda conta
    Selecionar a situação "Pendente"
    Clicar no botão salvar
    Conferir mensagem de sucesso
    Conferir se movimentação receita pendente foi criada no menu Resumo Mensal

Caso de Teste 06: Criar movimentação do tipo despesa paga
    Fazer login
    Clicar no menu criar movimentação
    Selecionar o tipo de movimentação "Despesa"
    Preencher descrição de Despesa Paga
    Preencher os campos de texto obrigatórios
    Selecionar primeira conta
    Selecionar a situação "Pago"
    Clicar no botão salvar
    Conferir mensagem de sucesso
    Conferir se movimentação despesa paga foi criada no menu Resumo Mensal

Caso de Teste 07: Criar movimentação do tipo despesa pendente
    Fazer login
    Clicar no menu criar movimentação
    Selecionar o tipo de movimentação "Despesa"
    Preencher descrição de Despesa Pendente
    Preencher os campos de texto obrigatórios
    Selecionar segunda conta
    Selecionar a situação "Pendente"
    Clicar no botão salvar
    Conferir mensagem de sucesso
    Conferir se movimentação despesa pendente foi criada no menu Resumo Mensal

Caso de Teste 08: Criar movimentação com campos inválidos
    Fazer login
    Clicar no menu criar movimentação
    Preencher campos obrigatórios com dados inválidos
    Clicar no botão salvar
    Conferir mensagem de campos inválidos

Caso de Teste 09: Criar movimentação com data posterior a data atual
    Fazer login
    Clicar no menu criar movimentação
    Preencher data de movimentação com data futura
    Clicar no botão salvar
    Conferir mensagem de data de movimentação futura
