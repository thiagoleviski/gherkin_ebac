# language: pt
Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que escolhi o produto que quero comprar na página da EBAC-SHOP

  Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
    Quando eu escolho a Cor, Tamanho e Quantidade
    Então consigo adicionar minha compra ao carrinho

  Cenário: Deve permitir apenas 10 produtos por venda
    Quando eu escolho a Cor, Tamanho e uma Quantidade maior do que 10 produtos
    Então não conseguirei adicionar minha compra ao carrinho

  Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
    Quando eu preencho as configurações do produto
    E clico no botão "limpar"
    Então as escolhas que fiz voltam para o estado inicial