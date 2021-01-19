*** Settings ***
Resource       ../resource/ResourceNovoUsuario.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Case ***
Caso de Teste 01: Criar novo usuário com dados novos
  Acessar a página de login
  Clicar no menu Novo Usuário
  Digitar o nome do novo usuário
  Digitar o e-mail do novo usuário
  Digitar a senha do novo usuário
  Clicar no botão cadastrar
  Conferir mensagem de sucesso

Caso de Teste 02: Criar novo usuário com e-mail existentes
  Acessar a página de login
  Clicar no menu Novo Usuário
  Digitar o nome do novo usuário
  Digitar o e-mail já existente do novo usuário
  Digitar a senha do novo usuário
  Clicar no botão cadastrar
  Conferir mensagem de Erro
