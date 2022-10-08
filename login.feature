#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que escolhi o produto que quero comprar na página da EBAC-SHOP

  Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
    Quando eu escolho a <cor> do produto
    E escolho o <tamanho> do produto
    E escolho a <quantidade> do produto
    Então consigo <adicionar> minha compra ao carrinho

    Exemplos: 
      | cor    | tamanho | quantidade | adicionar      |
      | Blue   | M       |          1 | adicionado     |
      |        | S       |          3 | não adicionado |
      | Orange |         |          2 | não adicionado |
      | Red    | XL      |            | não adicionado |

  Cenário: Deve permitir apenas 10 produtos por venda
    Quando eu escolho uma cor válida do produto
    E escolho um tamanho válido do produto
    E escolho uma quantidade maior do que 10 produtos
    Então não conseguirei adicionar minha compra ao carrinho

    Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
    Quando eu escolho uma cor do produto
    E escolho um tamanho do produto
    E escolho a quantidade do produto
    E clico no botão "limpar"
    Então as escolhas que fiz voltam para o estado inicial



