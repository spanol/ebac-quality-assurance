            #language: pt
            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja autenticado e acesse a página de configuração do produto

            Cenário: Selecionar tamanho, cor e quantidade
            Quando eu selecionar o tamanho "M"
            E a cor "Azul"
            E a quantidade "2"
            Então o produto deve ser configurado conforme as opções escolhidas

            Cenário: Adicionar produto configurado ao carrinho
            Dado que eu tenha configurado o produto
            Quando eu clicar em "Adicionar ao carrinho"
            Então o produto deve ser adicionado ao carrinho com as opções selecionadas

            Cenário: Tentar adicionar ao carrinho sem selecionar tamanho
            Quando eu selecionar apenas a cor "Preto" e a quantidade "1"
            E clicar em "Adicionar ao carrinho"
            Então deve exibir uma mensagem de alerta "Selecione o tamanho do produto"

            Cenário: Tentar adicionar ao carrinho mais de 10 produtos
            Quando eu selecionar quantidade de itens que somem mais de 10 produtos
            E clicar em "Adicionar ao carrinho"
            Então deve exibir uma mensagem de alerta "Limite de produtos por venda atingido"

            Cenário: Possuo itens e pretendo limpar meu carrinho
            Quando eu possuir itens no meu carrinho
            E  clicar no botão "limpar"
            Então o carrinho deve voltar ao estado original, sem produtos

            Esquema do Cenário: Configurar múltiplos produtos
            Quando eu selecionar o tamanho <tamanho>
            E a cor <cor>
            E a quantidade <quantidade>
            E clicar em "Adicionar ao carrinho"
            Então o produto deve ser adicionado ao carrinho com as opções <tamanho>, <cor> e <quantidade>

            Exemplos:
            | tamanho | cor        | quantidade |
            | "P"     | "Azul"     | "1"        |
            | "M"     | "Preto"    | "2"        |
            | "G"     | "Vermelho" | "3"        |