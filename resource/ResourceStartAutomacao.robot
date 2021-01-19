*** Settings ***
Library     SeleniumLibrary
Resource    ../resource/VariaveisAutomacao.robot

***Variables***
${BROWSER}    firefox

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser    about:blank            ${BROWSER}

Fechar navegador
  Close Browser

### Commons
