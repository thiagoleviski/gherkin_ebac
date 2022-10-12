# language: pt
Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que escolhi o produto que quero comprar na página da EBAC-SHOP

  Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
    Quando eu escolho a cor "Blue" do produto
    E escolho o tamanho "M" do produto
    E escolho a quantidade "5" do produto
    Então consigo adicionar minha compra ao carrinho

  Cenário: Deve permitir apenas 10 produtos por venda
    Quando eu escolho a cor "Red" do produto
    E escolho o tamanho "XL" do produto
    E escolho a quantidade "34" do produto
    Então não conseguirei adicionar minha compra ao carrinho

  Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
    Quando eu escolho a cor "Orange" do produto
    E escolho o tamanho "L" do produto
    E escolho a quantidade "3" do produto
    E clico no botão "limpar"
    Então as escolhas que fiz voltam para o estado inicial