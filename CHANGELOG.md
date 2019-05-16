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

        bin/rails g controller Org

        bin/rails g model Org

        rake db:migrate

        rails generate migration add_column_to_org id_org:integer nome:string email:string foto:blob instituto:string curso:string info:string link_site:string link_fb:string link_tt:string

## 15/05 Felipe

- Criei uma header inicial. Para isso, usei a gema `bootstrap_scss`, e segui [este tutorial](https://www.railstutorial.org/book/filling_in_the_layout). Coloquei acesso para criação de usuario e para a pagina inicial. Ademais, mechi no arquivo `app/views/application.html.haml`, que é uma pagina que esta em toda pagina da aplicação, assim, colocando o header apenas nela, terei um header em toda outra pagina do projeto.

- Adicionei a coluna `id` na tabela user, vai ser usado para login e outras coisas. Ideias para a tabela foram abstraidas [daqui](https://www.railstutorial.org/book/modeling_users#sec-creating_and_authenticating_a_user).

- [Segui este tutorial](https://www.railstutorial.org/book/modeling_users#sec-creating_and_authenticating_a_user) para fazer o hashing da senha, criando uma nova coluna na tabela user, para armazenar este hash.

## 16/05 Felipe

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
