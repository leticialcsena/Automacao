*** Settings ***
Resource       ../resource/ResourceResumoMensal.robot
Test Setup     Abrir navegador
###Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar registros em Fevereiro de 2020
    Fazer login
    Clicar no menu Resumo Mensal
    Selecionar mês de Fevereiro
    Selecionar ano de 2020
    Clicar no botão Buscar
    Confirmar que não tem registro

Caso de Teste 02: Pesquisar registros em Janeiro de 2021
    Fazer login
    Clicar no menu Resumo Mensal
    Selecionar mês de Janeiro
    Selecionar ano de 2021
    Clicar no botão Buscar
    Verificar que existe pelo menos um registro

Caso de Teste 03: Deletar uma Movimentação
    Fazer login
    Clicar no menu Resumo Mensal
    Deletar movimentação
