# README

versão necessária para rodar o Projeto.

* Ruby versão: 2.4.2.

* Bundler version 1.15.4.

* ------------ Configurando o projeto -------------

* 1 - Crie um fork e clone o projeto.

* 2 - Utileze a versão do rails 2.4.2 e a do bundler 1.15.4.

* 3 - Dentro da pasta do projeto rode: bundle install.

* 4 - Configure seu database.yml - (lembrando que o sistema está como padrão com o postgresql).

* 5 - Crie o banco com: rake db:create.

* 6 - Rode as migrations do projeto com: rake db:migrate.

* 7 - crie o SuperAdmin do projeto com: rake create_admin_super.

* 8 - Rode o servidor local - rails s.

* 9 - O Projeto está no ar, em localhost:"porta que você escolheu".

* --------------- Como Iniciar a utilizar o projeto -----------------

* 1 - Você pode criar um novo usuário, ou logar com o SuperAdmin:
      email: superadmin@whichbook.com, senha: 123456

* 2 - O cadastro de usuário é feito deslogado do sistema, e quando logado como admin,
      você pode alterar qualquer usuario para admin, na Lista de Usuarios.

* 3 - Admins podem cadastrar livros, editar livros e excluir livros, na própria index dos livros.
