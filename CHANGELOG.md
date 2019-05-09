# Changelog

Model: <date> - <who> list_of_changes

## 05/05 Felipe
    - Criação do CHANGELOG
    - A partir de agora, os comandos foram realizados no shell do docker
    - Gerando modelo para usuario com `bin/rails g model User id_user:primary_key nome:string email:string instituto:string curso:string info:string is_user:boolean link_site:string link_fb:string link_tt:string is_org:boolean lista_emails:string tags:string`
    - `bin/rails db:migrate` - migrando para o banco
    - Pagina para criação de usuário

## 09/05 Grupo
    - Criamos tabela de organinação e definimos tabelas 1:n
    - Criamos Views de organização para criação uma nova org
    - Criamos Controller para organização
    - Executamos:

        bin/rails g controller Org

        bin/rails g model Org index

        rake db:migrate

        rails generate migration add_column_to_org id_org:integer nome:string email:string foto:blob instituto:string curso:string info:string link_site:string link_fb:string link_tt:string
