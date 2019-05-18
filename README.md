# Como executar

- `sudo docker-compose build` - Constrói a imagem do projeto atual

- `sudo docker-compose up -d` - Subindo a aplicação, -d é para rodar em background

- Acesse `http://localhost:3000`

- `sudo docker exec -ti uspmais_web_1 /bin/bash` - Abre terminal iterativo dentro do docker

- `sudo docker-compose down` - Para tudoooo!

- Caso tenha feito modificações na gemas ou algo mais profundo, execute `docker-compose run web bundle install && docker-compose up --build`

> Comandos previamente executados (não mais necessários)   
> - 'docker-compose run web rails new . --force --no-deps --database=postgresql'   
> - 'sudo chown -R $USER:$USER .'

# Mudanças

Mudanças podem ser acompanhadas no arquivo `CHANGELOG.md`

# Objetivo

Um site contendo informações sobre hórarios das atividades das atividades extracurriculares do IME, potencialmente outras instituições também serão incluidas. Tais atividades podem ser:
- Grupos de extensão;
- Atividades de dança;
- Atividades de atleticas;
- Feiras e exposições;
- Etc.

Todo o site contaria com uma gama de filtros e seleções, fazendo com que o usuário pudesse ver todas as atribuições da atividade, tais como, horário, abertura ao público, preços, etc.    
O usuário poderia realizar um log in para gerenciar todos seus interesses e se inscrever em tais eventos. Os organizadores de evento teriam um log in para gerenciar seus eventos, obtendo informações sobre o publico atingindo, quantidade de interessados, etc.  

## Nome dos integrantes
- Daniela Favero,  10277443
- Felipe Noronha,  10737032
- Gustavo Bastos,  10284389  
- Rodrigo Vidotti, 10687896
