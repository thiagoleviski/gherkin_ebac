# language: pt
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Contexto: 
    Dado que estou na tela de checkout
    E quero concluir minha compra
    E tenho que concluir meu cadastro

  Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
    Quando preencho todos os campos obrigatórios
    Então finalizo minha compra

  Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    Quando preencho meus dados
    E o campo e-mail está com um formato inválido
    Então meu cadastro não é efetuado
    E uma mensagem de erro é exibida

  Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
    Quando preencho meus dados
    E algum destes dados está vazio
    Então meu cadastro não é efetuado
    E uma mensagem de alerta é exibida

  Esquema do Cenário: Validação de cadastros inválidos
    Quando preencho meus dados como o <email>
    Então meu cadastro não é efetuado
    E uma <mensagem> de erro é exibida

    Exemplos: 
      | email              | mensagem                     |
      | xxxx@@gmail.org.br | mensagem de erro é exibida   |
      |                    | mensagem de alerta é exibida |
