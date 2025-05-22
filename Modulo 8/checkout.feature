            #language: pt
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja não esteja autenticado, não tenha uma conta e tente finalizar a compra precisarei
            fazer meu cadastro

            Cenário: cadastro válido
            Dado que eu acesse a página de cadastro
            Quando eu digitar o email "viniciusalmeida@gmail.com"
            E preencher os itens obrigatórios demarcados por um astericos (*)
            Então deve ocorrer o redirecionamento para a tela de checkout

            Cenário: cadastro inválido   (e-mail inválido)
            Dado que eu acesse a página de cadastro
            Quando eu digitar o email "xyzabc@gm.com"
            E preencher os itens obrigatórios demarcados por um astericos (*)
            Então deve exibir uma mensagem de alerta “E-mail inválido”

            Cenário: cadastro inválido   (campos obrigatório faltando)
            Dado que eu acesse a página de cadastro
            Quando eu digitar o email "viniciusalmeida@gmail.com"
            E não preencher algum dos itens obrigatórios demarcados por um astericos (*)
            Então deve exibir uma mensagem de alerta “Campos obrigátorios faltando”

            Esquema do Cenário: Validação do cadastro na tela de checkout
            Quando eu digitar o email <email>
            E preencher os itens obrigatórios <preenchimento>
            Então deve exibir a mensagem <mensagem>

            Exemplos:
            | email                     | preenchimento | mensagem                               |
            | viniciusalmeida@gmail.com | completo      | Redirecionamento para tela de checkout |
            | xyzabc@gm.com             | completo      | E-mail inválido                        |
            | viniciusalmeida@gmail.com | incompleto    | Campos obrigatórios faltando           |


