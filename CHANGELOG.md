# Changelog

Model: <date> - <who> list_of_changes

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

-Executei:
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

    - [Fonte](https://www.railstutorial.org/book/updating_and_deleting_users)

## 17/05 Felipe

- Arrumei o login, agora temos uma sessão funcional. QUe funciona da seguinte maneira:

    1. Ao criar um novo login, o usuario é logado no sistema automaticamente.
    2. É possivel realizar o login com o email e senha cadastrados.
    3. Ao realizar o login, as informações no header são alteradas.

- Organizei a pagina como um todo, mais especificamente:

    1. Adicionei um breve texto á pagina inicial.
    2. Adicionei um footer nas paginas.
