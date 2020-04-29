#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catalogo ninjaflix
    Sendo um usuário cadastrado
    Posso acessar o sistema com o meu email e senha
    BDD = Desenvolvimento guiado por comportamento

    @login_happy
    Cenario: Acesso
        Quando eu faço login com "tony@stark.com" e "pwd123"
        Entao devo ser autenticado
        E devo ver "Tony Stark" na área logada

    @login_hapless
    Esquema do Cenario: Login sem sucesso
        Quando eu faço login com <email> e <senha>
        Entao não devo ser autenticado
        E devo ver a mensagem de alerta <texto>

        Exemplos:
        |email             |senha   |texto                          |
        |"tony@stark.com"  |"123"   |"Usuário e/ou senha inválidos" |
        |"teste"           |"teste" |"Usuário e/ou senha inválidos" |
        |""                |"teste" |"Opps. Cadê o email?"          |
        |"teste@gmail.com" |""      |"Opps. Cadê a senha?"          |
