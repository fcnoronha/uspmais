# Changelog

## 05/05 Felipe

- Criação do CHANGELOG
- A partir de agora, os comandos foram realizados no shell do docker
- Gerando modelo para usuario com `bin/rails g model User id_user:primary_key nome:string email:string instituto:string curso:string info:string is_user:boolean link_site:string link_fb:string link_tt:string is_org:boolean lista_`emails:string tags:string`
- `bin/rails db:migrate` - migrando para o banco
- Pagina para criação de usuário

## 09/05 Grupo

- Criamos tabela de organinação e definimos tabelas 1:n
- Executamos:

    bin/rails g controller Org index

    bin/rails g model Org

    rake db:migrate

    rails generate migration add_column_to_org id_org:integer nome:string email:string foto:blob instituto:string curso:string info:string link_site:string link_fb:string link_tt:string

## 15/05 Dani

- Criaçao da relaçao entre as tabelas "user" e "org", chamada de "follows"

- Executei:
    rails g model Follow user:references org:references
- Modifiquei os models do user, org e follow
- Modifiquei o controller do user

- Divirta-se criando uma relaçao:
    - Abra o localhost:3000 e crie um user e uma org
    - Dentro do terminalzinho do docker, faça o seguinte:
        rails c
        User.all
        Org.all
        meu_user = User.find(1)
        minha_org = Org.find(1)
        meu_follow = Follow.new
        meu_follow.user = meu_user
        meu_follow.org = minha_org
        meu_follow.save
        meu_follow
    - Ainda no rails c, veja como e facil ver, por exemplo, todos os users relacionados a uma determinada org:
        Follow.where(org:minha_org)

[FONTE:](https://kolosek.com/rails-join-table/)        

## 15/05 Felipe

- Criei uma header inicial. Para isso, usei a gema `bootstrap_scss`, e segui [este tutorial](https://www.railstutorial.org/book/filling_in_the_layout). Coloquei acesso para criação de usuario e para a pagina inicial. Ademais, mechi no arquivo `app/views/application.html.haml`, que é uma pagina que esta em toda pagina da aplicação, assim, colocando o header apenas nela, terei um header em toda outra pagina do projeto.

- Adicionei a coluna `id` na tabela user, vai ser usado para login e outras coisas. Ideias para a tabela foram abstraidas [daqui](https://www.railstutorial.org/book/modeling_users#sec-creating_and_authenticating_a_user).

- [Segui este tutorial](https://www.railstutorial.org/book/modeling_users#sec-creating_and_authenticating_a_user) para fazer o hashing da senha, criando uma nova coluna na tabela user, para armazenar este hash.

## 16/05 Felipe

- Criei uma header inicial. Para isso, usei a gema `bootstrap_scss`, e segui [este tutorial](https://www.railstutorial.org/book/filling_in_the_layout). Coloquei acesso para criação de usuario e para a pagina inicial. Ademais, mechi no arquivo `app/views/application.html.haml`, que é uma pagina que esta em toda pagina da aplicação, assim, colocando o header apenas nela, terei um header em toda outra pagina do projeto.

- [Segui este tutorial](https://www.railstutorial.org/book/sign_up) para fazer a criação de um usuário. Ademais, fiz varias alterações no forme de criação de usuário, são elas:

    1. Criação de um css para os forms, que deixam as coisas mais bonitas.
    2. Fazer com que uma falha na criação de usuário seja mostrada de forma mais clara, para isso, criei uma nova pasta em views, /shared.
    3. Criação da view `/shared/_error_messages.html.haml/` que realiza a amostragem de erros durante a criação de um usuario.
    4. Reorganizei o `user_controler`.
    5. Agora, temos uma validação bonita e elegante, de campos, durante a criação de usuario.
    6. Tambem defini uma flash, uma mensagem que aparece na proxima pagina falando que a criação foi bem sucessida.

- Seguindo adiante, [usei este tutorial](https://www.railstutorial.org/book/basic_login) para fazer o login do usuario, isto é, inicio de uma autenticação com um dado email e uma dada senha. Para isso, fiz os seguintes passos:

    1. Criei um novo modelo para a sessão `rails generate controller Session new`
    2. Criei a pagina de login a `session/new`
    3. Alterei o controler da sessao.
    4. Criação de metodos em `session_helper.rb`, que vão ser utilizado por varias partes do programa.
    5. Atualização do header para comportamento diferente caso o usuário esteja logado.
    6. Falta consertar o erro para login

## 16/05 Dani

    - Mudei o show da ORG, agora esse view exibe o perfil da ORG em si
    - Mudei o show do EVENT, agora esse view exibe as informações do EVENT em si

## 16/05 Rodrigo

- Tabela Event criada

- Executei:
    bin/rails g controller Event index

    bin/rails g model Event

    rake db:migrate

    rails generate migration add_column_to_event id_event:integer nome:string foto:binary info:string local:string date:integer time:integer

    rake db:migrate


- Criaçao da relaçao entre as tabelas "user" e "event", chamada de "subscribed", bem como a relaçao entre as tabelas "org" e "event", chamada de "host"

- Executei:
    rails g model Subscribed user:references event:references

    rails g model Host org:references event:references

- Modifiquei os models do user, org, event

- Modifiquei o controller do event

## 17/05 Rodrigo

- Adição da feature "edit":

    - Criação da feature "edit" para org
        1. Adicionei o action edit no org controller;
        2. Adicionei o action update no org controller;
        3. View org/[:id]/edit criada;
        4. View org/index modificada -> adição do link edit.

    - Criação da feature "edit" para event
        1. Adicionei o action edit no event controller;
        2. Adicionei o action update no event controller;
        3. View event/[:id]/edit criada;
        4. View event/index modificada -> adição do link edit

    - Criação da feature "edit" para user
        1. Adicionei o action edit no user controller;
        2. Adicionei o action update no user controller;
        3. View user/[:id]/edit criada;
        4. View user/index modificada -> adição do link edit

    - Feature delete adicionada em /org, /event e /user;


    - [Fonte](https://www.railstutorial.org/book/updating_and_deleting_users)

## 17/05 Felipe

- Arrumei o login, agora temos uma sessão funcional. QUe funciona da seguinte maneira:

    1. Ao criar um novo login, o usuario é logado no sistema automaticamente.
    2. É possivel realizar o login com o email e senha cadastrados.
    3. Ao realizar o login, as informações no header são alteradas.

- Organizei a pagina como um todo, mais especificamente:

    1. Adicionei um breve texto á pagina inicial.  
    2. Adicionei um footer nas paginas.
    3. Organizei a visualização do usuário (link para perfil), para deixar mais agradavel.
    4. Fiz com que o header tivesse um comportamento diferente quando um usuario é logado, assim, o botão 'criar usuario' da espaço ao botão 'criar evento'.
    5. Finalmente, dei uma organizada geral (coisa estetica) nos formularios.

- Adicionei um campo para o usuário ter uma confirmação de senha    


## 17/05 Dani

- Tomamos a decisao de excluir as orgs, transformando os users em organizaçoes. De agora em diante, quem tera login serao apenas os admins das organizaçoes.
Quem quiser interagir com os eventos nao precisara fazer login, de modo que a plataforma passa a ser um mural para o uspiano (ou nao) comum.

- Tive que reorganizar as tabelas de ligaçao (de references). Preferi excluir todas e
criar uma nova, hosts, que ligasse user a events.

- DELETANDO AS ANTIGAS:

  - Executei:
    rails g migration drop_follows
    rails g migration drop_orgs_and_hosts
  - Dentro do arquivo de migraçao do drop_follows:
      drop_table :follows
      drop_table :subscribeds
  - Dentro do arquivo de migraçao do drop_orgs_and_hosts:
      drop_table :hosts
      drop_table :orgs
  - Executei:
      rails db:migrate
      rails destroy model follows
      rails destroy model subscribeds
      rails destroy model hosts
      rails destroy model orgs
      rails destroy controller org

  [Fonte: https://medium.com/@limichelle21/ctrl-z-in-rails-5-undo-tables-models-and-controllers-bc012ca49d68]

- CRIANDO A NOVA HOST:

    - Executei:
        rails g model Host event:references user:references
    - Modifiquei os models do user e event
    - Modifiquei o controller do event

- Criei um arquivo provisorio "user/profile.html.haml". A ideia e que o codigo dele deve ir para o user/show.html.haml eventualmente. E o codigo que esta em user/show.html.haml deveria estar em um /index do proprio site, como uma pagina inicial (tambem provisoria, enquanto nao implementamos a pesquisa)

## 18/05 Felipe

- Arrumei as migrations da Dani, retirando coisas que nao eram mais necessárias
- Gerei um novo controlador, executando `rails generate controller StaticPages home about`. Esse controlador vai lidar com as nossas paginas mais estaticas, como a home (inicial) e a about_us .
- Arrumei o header, para que, quando o usuario esteja logado, o botao de editar da dropdown list redirecione para a edição dele.
- Arrumei as rotas para as novas paginas.
- Escrevi coisas na pagina sobre nos.

## 21/05 Rodrigo

- Deleção de usuário adicionado na página de config do usuário (/edit)

## 22/05 Rodrigo

- Fiz um botão no header que redireciona para a lista de eventos criados.

- O /event/index lista os eventos e se clicar em algum evento, você é redirecionado para ele.

- Estando no /event/:id, agora tem um botão que redireciona para edição e outra pra deleção desse mesmo evento.

- Mudando data type de "time"(integer -> time):
    1. Executei rails g migration change_time_type_at_events_to_time
    2. Criei o método `change` no /db/migrate/change_time_type_at_events_to_time
    3. Executei rake db:migrate:reset
    4. Executei rake db:migrate

- Mudando data type de "date"(integer -> date):
    1. Executei rails g migration change_date_type_at_events_to_date
    2. Criei o método `change` no /db/migrate/change_date_type_at_events_to_date
    3. Executei rake db:migrate

## 23/05 Daniela
- Agora, quando um evento e criado, ele verifica se voce esta logado antes. Quando logado, o evento que voce cria e automaticamente linkado ao usuario logado por meio do model Host. Fiz isso alterando o "event_controller". Se voce tenta criar um evento nao estando logado, voce e redirecionado para a pagina de login, com um flash.

- O usuario pode listar os eventos que esta cedendo pelo botao com dropdown. Fiz isso criando a view "my.html.haml", alterando "event_controller.rb", o "routes.rb" e o "application.html.haml". Novamenta ha toda a verificaçao se o usuario esta logado, e se nao esta, e redirecionado para a pagina de login.

- O header estava com um bug: quando eu ia de uma pagina a outra e tentava visualizar o dropdown, nao era possivel clicar. Precisava dar refresh na pagina. O erro que aparecia no console do navegador era do "turbolinks" e advertia que o header deveria estar no body, nao no head do html da application. O problema: o body da pagina agora divide espaço com o header, mas ainda nao temos css para sentir onde começar o titulo das paginas por exemplo. Por isso as vezes os titulos podem ficar ligeiramente cobertos pelo header. Fiz uma gambiarra para tentar conserta-lo (com %br%br heheh), mas isso precisa ser arrumado.

## 24/05 Felipe

- Arrumei umas formatações aqui no CHANGELOG que estavam ativando muito o meu TOC.

- Arrumei a descrição das labels de alguns formularios.

- Coloquei uma flash para quando um evento é criado.

- Arrumei a formatação de `event/show/html/haml`, `index/show/html/haml`, `my/show/html/haml`, colocando as coisas dentro de uma margem.

- Troquei alguns `link_to` simples por botões.

- Aparentemente arrumei o header, voltei ele para a sessão de *header* do application, fiz algumas alterações e não consegui reproduzir o erro que acontecia com a Daniela. Por hora, considero este erro arrumado.

- Troquei a condição para que `user/show` escolhesse ou não renderizar algumas coisas.

- Coloquei titulo nas paginas que estavam sem.

- Agora, só é possivel editar um evento se você for o criador dele.

- Arrumei o posicionamento da mensagem flash.

## 24/05 Rodrigo

- Consertei um pequeno erro: Quando tentava deletar um evento, dava erro porque a tabela hosts que depende de event não sabia o que fazer agora que o evento vinculado não estava mais lá. Apenas adicionei `dependent: :destroy` no /model/event para deletar da tabela host junto.

## 18/06 Felipe

- Instalei o RSpec no projeto, adicionando a gema e executando `rails generate rspec:install`.
- Basta executar `rspec` no terminal para executar os testes.
- Instalei a gema `factory_bot_rails`, essa gema sera a factory para os nossos tests. EM seguida criei pastas e arquivos necessarios para o seu devido funcionamento.
- Executei `rails g rspec:model user` para gerar os testes necessarios para o model do usuario.
- Configurei um factory para usuario, apenas criando o arquivo `user.rb` na pasta `spec/factories`.
- Executei `rails g rspec:controller user` para gerar os testes necessarios para o controller do usuario, mas nao comecei a fazer nenhum.os

## 19/06 Felipe

- Gerel os testes para o model de eventos.
- Mudei `text_field` para `text_area` algumas partes dos forms.
