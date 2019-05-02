# Como executar

- `docker-compose build` - Constroi a imagem do projeto atual

- `docker-compose up` - Botando a aplicação

- Acesse `http://localhost:3000`

- `docker-compose run --service-ports --rm uspmais` - Abre terminal iterativo dentro do docker

- `docker-compose down` - Para tudoooo!

- Caso tenha feito modificações na gemas ou algo mais profundo, execute `docker-compose run web bundle install && docker-compose up --build`

> Comandos previamente executados (não mais necessarios)   
> - 'docker-compose run web rails new . --force --no-deps --database=postgresql'   
> - 'sudo chown -R $USER:$USER .'
> - 'docker-compose run web rake db:create'

# Objetivo

Um site que diz sobre hórarios das atividades das atividades extracurriculares do IME, potencialmente outras instituições também serão incluidas. Tais atividades podem ser:
- Grupos de extensão;
- Atividades de dança;
- Atividades de atleticas;
- Feiras e exposições;
- Etc.

Todo o site contaria com uma gama de filtros e seleçoes, fazendo com que o usuario pudesse ver todas as atribuições da atividade, tais como, horario, abertura ao publico, preços, etc.    
O usuario poderia realizar um login, para assim poder gerenciar todos seus interesses, e, inclusive, se inscrever em tais eventos. Os organizadores de evento teriam um login para gerenciar seus eventos, obtendo informações sobre o publico atingindo, quantidade de interessados, etc.  

## Nome dos integrantes
- Daniela Favero, 10277443
- Felipe Noronha, 10737032
- Gustavo Bastos, 10284389  
- Rodrgio Vidotti,10687896
