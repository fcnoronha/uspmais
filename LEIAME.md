# USP+ A universidade fora da sala de aula

[![Build Status](https://travis-ci.org/mrfelipenoronha/uspmais.svg?branch=master)](https://travis-ci.org/mrfelipenoronha/uspmais)
[![Coverage Status](https://coveralls.io/repos/github/mrfelipenoronha/uspmais/badge.svg?branch=master)](https://coveralls.io/github/mrfelipenoronha/uspmais?branch=master)
[![Heroku](https://heroku-badge.herokuapp.com/?app=uspmais&style=flat&svg=1)](https://uspmais.herokuapp.com)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


[<img src="logo.png">](https://uspmais.herokuapp.com/)

---

Esta plataforma está sendo desenvolvida por Daniela Favero, Felipe Noronha e Rodrigo Vidotti como projeto da disciplina MAC0218 - Técnicas de programação II, do Instituto de Matematica e Estatística na Universidade de São Paulo.

Para visitar a versão online da aplicação hospedada pelo Heroku, basta acessar [este link](https://uspmais.herokuapp.com/).

# Como executar localmente

1. `git clone https://github.com/mrfelipenoronha/uspmais.git` - Clona o repositório do GitHub

2. `sudo docker-compose build` - Constrói a imagem do projeto atual

3. `sudo docker-compose up` - Subindo a aplicação

4. Acesse `http://localhost:3000`

5. `sudo docker-compose down` - Para a execução

6. Para execução dos nossos teste, basta abrir o terminal iterativo Docker após construiur a imagem do projeto e subir a aplicação, através do comando `sudo docker exec -ti uspmais_web_1 /bin/bash`. No terminal, digite `rspec` para testar os nossos models e controllers, e digite `cucumber` para testar as nossas views.

> Em alguns momentos o docker-compose up não funciona de primeira, sendo necessário que o container seja finalizado e inicializado novamente para o funcionamento correto.

## Próximos passos ?

Hoje, podemos nos dizer satisfeitos com o nosso trabalho, porém ainda não alcançamos o nosso objetivo. Começamos com a ideia de distribuir a nossa aplicação para solucionar um problema que discutimos e encontramos no nosso dia a dia no instituto, e agora cabe a nós apresentarmos e dar esse retorno ao IME, ou até talvez, a USP inteira.

A seguir esta uma lista com as próximas mudanças que faremos na plataforma:

- Tradução de mensagens em erros;
- Validação por email da criação de usuário;
- Ligação com Travis-CI
- Uso de API do Google Maps para localização de evento;
- Integração com API da google para salvar eventos na agenda.


## Agradecimentos

Gostaríamos de agradecer primeiramente ao professor e monitor da disciplina, que deram a oportunidade e o apoio necessário para que pudéssemos aprender sobre a construção de uma aplicação a partir do zero, bem como a possibilidade de vivenciarmos a metodologia ágil, o trabalho em equipe e a formação de conhecimento através da prática.

Também é importante evidenciar o papel da universidade que nos disponibiliza esse ambiente de aprendizado contínuo, tal como o próprio ambiente físico como o fornecimento de equipamentos para que pudéssemos nos reunir e trabalhar.

Por fim, temos que agradecer aos vários tutoriais, soluções e pessoas dispostas a nos ajudar, tanto conhecidos como na própria internet, como por exemplo o Stack Overflow.

Muito obrigado.
