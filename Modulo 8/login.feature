            #language: pt
            Funcionalidade: Autenticação na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu tente me autenticar na plataforma

            Cenário: Autenticação válida
            Dado que eu acesse a página de autenticação
            Quando eu digitar o email "viniciusalmeida@gmail.com"
            E a senha "Senha@1234"
            Então deve ocorrer o redirecionamento para a tela de checkout

            Cenário: Autenticação inválida (usuário inexistente)
            Dado que eu acesse a página de autenticação
            Quando eu digitar o email "xyzabc@gm.com"
            E a senha "Senha@1234"
            Então deve exibir uma mensagem de alerta “Usuário inexistente”

            Cenário: Autenticação inválida (senha incorreta)
            Dado que eu acesse a página de autenticação
            Quando eu digitar o email "viniciusalmeida@gmail.com"
            E a senha "asdasd"
            Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Esquema do Cenário: Autenticar mútiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                     | senha        | mensagem       |
            | "viniciusalmeida@gmail.com" | "Senha@1234" | "Olá Vinicius" |
            | "debora@gmail.com"          | "Senha@1234" | "Olá debora"   |
            | "gomes@gmail.com"           | "Senha@1234" | "Olá gomes"    |