*** Settings ***
Resource       ../resource/ResourceHome.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Conferir saldo depois da automação
    Fazer login
    Verificar se o saldo é igual a -100
    Sair do site
