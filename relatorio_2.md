# Projeto MAC0218 - USPMais

## Nome dos integrantes
- Daniela Favero,  10277443
- Felipe Noronha,  10737032
- Rodrigo Vidotti, 10687896

---

# Como executar

1. `git clone https://github.com/mrfelipenoronha/uspmais.git` - Clona o repositorio do github

2. `sudo docker-compose build` - Constrói a imagem do projeto atual

3. `sudo docker-compose up` - Subindo a aplicação

4. Acesse `http://localhost:3000`

5. `sudo docker-compose down` - Para a execução

> Em alguns momentos o docker-compose up não funciona de primeira, sendo necessario que o container seja finalizado e inicializado novamente para o funcionamento correto.

## O que foi feito

Nessa segunda entrega, usamos um [repositorio do Github](https://github.com/mrfelipenoronha/uspmais) para organizar e controlar o nosso desenvolvimento. Atraves da criação de *branches* pudemos dividir o workflow entre criação de novas features e correção de bugs. Além disso, usando tecnicas de desenvolvimento agil vistas em aula, conseguimos manter um otimo ritmo de desenvimento, havendo grande harmonia entre planejamento e mão na massa.

Agora, entrando no escopo do que realmente foi feito. Nessa parte construimos todo o esquelo do projeto e definimos suas principais funcionalidades, atraves da criação de novas visões, rotas, modelos, e muito mais. Para manter a consistencia entre os diferentes ambientes de desenvolvimento, usamos o Docker, uma ferramenta muito robusta e pratica que nos possibitou um nivel incrivel de compatibilidade entre as versões feitas por cada integrante do grupo.

### Explicando o esqueleto

Nesse esqueleto, criamos:

1. 4 controladores (event, session, static_pages e user);
2. 3 modelos (event, host, user);
3. Diversas views para cada controlador;
4. E muito mais, que não cabem na descrição desse sucinto relatorio.

Assim que a pagina inicial é acessada, é possivel, atravez do menu superior, que o usuario faça diversas interações com o sistema, como login e signin. Ademais, caso um usuario esteja *logado*, é possível que ele crie novos eventos, alem de poder realizar edições nele mesmo e eu seus eventos antigos. Ja um usuario que não esta *logado* pode visualizar todos os eventos, e, ate mesmo, outros usuarios. Em nosso sistema, definimos que usuarios seriam as organizações criadoras de eventos.

Não menos importante, para se obter mais informações sobre o que foi feito e como foi feito, posse se consultar o [arquivo  CHANGELOG](https://github.com/mrfelipenoronha/uspmais/blob/master/CHANGELOG.md) disponivel no repositorio.

## Proximos passos

Para um futuro proximo, iremos tomar os seguintes passos acerca do projeto:

1. Implementar testes automatizados;
2. Deixar o sistema mais organico, aumentando a fluidez do usuario;
3. Traduzir erros e mensagens que aparecem.

## Principais dificuldades encontradas

A principal, e basicamente unica, dificuldade que encontramos foi a de usar ruby/rails. A linguagem não e nem um pouco clara para estudantes dos 3º semestre, ja a bibliografia e as proprias notas de aula são muito vagas e inconsistentes. Todávia, com ajuda de pessoas que ja tinham cursado a materia e da maravilhosa rede mundial de computadores, obtemos exito em aprender parte da linguagem, tornando possivel a realização do projeto.
