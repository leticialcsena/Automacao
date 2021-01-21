*** Settings ***
Resource       ../resource/ResourceEndAutomacao.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Limpar todos as movimentações de 2021
    Fazer login
    Clicar no menu Resumo Mensal
    Deletar primeira movimentação
    Deletar segunda movimentação
    Deletar terceira movimentação

Caso de Teste 02: Limpar todas as contas
    Fazer login
    Clicar no menu Contas
    Clicar no submenu Listar
    Deletar primeira conta
    Deletar segunda conta

Caso de Teste 03: Confirmar se não possui nada na home
    Fazer login
    Garantir que não possui conta de aluguel na home
