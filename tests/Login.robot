*** Settings ***
Resource       ../resource/ResourceLogin.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Fazer login com dados válidos
  Acessar a página de login
  Digitar o e-mail válido no campo de E-mail
  Digitar a senha válida no campo senha
  Clicar no botão Entrar
  Conferir se o login foi realizado com sucesso

Caso de Teste 02: Fazer login com e-mail errado
  Acessar a página de login
  Digitar o e-mail inválido no campo de E-mail
  Digitar a senha válida no campo senha
  Clicar no botão Entrar
  Conferir mensagem de erro

Caso de Teste 03: Fazer login com senha errada
  Acessar a página de login
  Digitar o e-mail válido no campo de E-mail
  Digitar a senha inválida no campo senha
  Clicar no botão Entrar
  Conferir mensagem de erro

Caso de Teste 04: Tentativa de login sem preencher os acessos
  Acessar a página de login
  Clicar no botão Entrar
  Conferir se aparecem as mensagens de erro
