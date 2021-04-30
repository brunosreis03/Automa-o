# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um usuário do site FakeEcommerce
  Gostaria de logar na minha conta
  Para acessar minhas informacoes

    @busca_login_valido
    Cenário: Realizar login
        Dado que acesso a página de login
        Quando submeto minhas credenciais com "breistester@gmail.com" e "010203"
        Então sou redirecionado para minha conta

    @busca_login_valido
    Esquema do Cenario: Login com falha

        Dado que acesso a página de login
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input             | senha_input | mensagem_output                             |
            | bruninhosreis@gmail.com | 010203      | There is 1 error\nAuthentication failed.    |
            | breistester@gmail.com   | 010204      | There is 1 error\nAuthentication failed.    |
            | breistester&gmail.com   | 010203      | There is 1 error\nInvalid email address.    |
            |                         | 010203      | There is 1 error\nAn email address required.|
            | breistester@gmail.com   |             | There is 1 error\nPassword is required.     | 
            |                         |             | There is 1 error\nAn email address required.|   