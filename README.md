# TUTORIAL PARA RODAR A AUTOMAÇÃO DO SITE SEUBARRIGA


### INSTRUÇÕES PARA INSTALAR O PYTHON E O ROBOT

**Disponibilizei um documento com as instruções para preparar o seu ambiente para rodar a automação com o Robot Framework no link ao lado:**
[Tutoria de Instalação](https://drive.google.com/file/d/1IIjox7tX8vNGBjl3i5lgcIzlxI1sCGej/view?usp=sharing)


### INSTRUÇÕES PARA EXECUTAR OS COMANDOS

**Disponibilizei um documento com os comandos necessários para executar todas as suítes de automação no link ao lado**
[Comandos de execução da automação](https://drive.google.com/file/d/1DWkeQb-9N2F2fA3SX0N-hYgu5YzRSeTG/view?usp=sharing)

---

### SOBRE A AUTOMAÇÃO

#### SEPARAÇÃO DE ARQUIVOS
Os arquivos dos projetos estão separados em duas pastas:
1. Resource
2. Tests

Sendo que, na pasta de **Resource** estão os arquivos resources de cada suíte de teste. Nestes arquivos são listados todas as *Keywords*, ou seja, as instruções que o robô vai seguir para executar a automação conforme o planejado. Nesta pasta também pode ser encontrado o arquivo de Variáveis (**VariaveisAutomacao.robot**), este contém todos os **dados** que vamos utilizar em formas de variáveis nos arquivos de resources como por exemplo o e-mail para fazer login, a senha, tipo de conta, xpath de botões, menus e campos além das mensagens de erro e sucesso do site.

Já na pastas **Tests** estão os arquivos com os **casos de teste**, estes são a base que vai popular os arquivos de resource, é a partir dele que se monta as instruções com as keywords. Nesta automação foi usada a forma de escrita **procedural**, porém existe a possibilidade de se escrever em **BDD**, por exemplo, é só uma questão de escolher a melhor prática que atenda ao projeto e a equipe.

OBS: Cada arquivo de teste tem o seu resource, é feito dessa forma para ficar mais fácil de dar manutenção em possíveis alterações e evoluções de uma funcionalidade ou tela. Então na pasta tests você encontra o arquivo Login.robot, e na pasta resource você encontra seu arquivo de keywords correspondente com o nome de ResourceLogin.robot.


#### ORDEM DE EXECUÇÃO
Para construir essa automação, escolhi a estratégia de partir do ponto que **o site estará sempre limpo de dados**, ou seja, o usuário utilizado não terá nenhum registro de movimentação, nem lista de contas.
Sabendo dessa estratégia é preciso manter uma ordem de execução de cada suíte visto que temos funcionalidades dependentes uma da outro no fluxo do site, por exemplo:
- Não é possível visualizar um registro no Resumo Mensal se o usuário não tem nenhuma movimentação
- Não é possível criar uma movimentação com sucesso se não tem uma conta cadastrada

Mas para garantir também essa regra de não aceitação criei dentro do arquivo CriarMovimentacao.robot a validação para garantir que não será possível criar uma movimentação sem a conta, ou seja se você rodar primeiro o arquivo Contas.robot ao executar o arquivo CriarMovimentacao.robot o primeiro caso de teste não vai passar pois você já criou uma conta.

##### A partir disso a ordem de execução dos casos deve ser:
- NovoUsuario.robot
- Login.robot
- CriarMovimentacao.robot
- Contas.robot
- ResumoMensal.robot
- Home.robot
- EndAutomacao.robot


#### SOBRE O ARQUIVO ENDAUTOMACAO.ROBOT
Como a estratégia de ponto de partida  dessa automação é de um site sem nenhum dado,  criei este arquivo para rodar no final de toda validação de casos de teste do sistema, ele terá a função de limpar todos os arquivos já deixando **tudo pronto para quando precisarmos executar a automação novamente**.


#### RESSALVA PARA SUITE DE TESTE NOVOUSUARIO.ROBOT
Toda as vezes que você for executar a automação do cadastro de um novo usuário, você deve acessar o arquivo **VariaveisAutomacao.robot** na pasta Resource e alterar o valor da variável *${emailNovoUsuario}* para um e-mail que ainda não está cadastrado na base do site.
Esse teste tem duas validações, primeiro ele valida a criação de um novo usuário a partir de um e-mail não registrado na base e em seguida ele valida a criação de um novo usuário com um e-mail já registrado na base. Sendo assim, quando você rodar a automação o valor na variável de email do novo usuário será utilizado e então o arquivo de variáveis fica desatualizado, necessitando de um novo e-mail para rodar corretamente.
OBS: Se essa alteração não for feita o robot alertará uma falha já que aquele e-mail já será reconhecido.


#### RESSALVA PARA A SUITE DE TESTE HOME.ROBOT
O cenários de teste que está sendo validado nesta suíte é a partir do valor das variáveis que estão no arquivo VariaveisAutomacao.robot, caso você queira alterar os valores de criação de movimentação ou tipo de movimentação você também deve atualizar o valor da variável de saldo da home.
