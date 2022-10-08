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

  Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    Quando preencho meus dados obrigatórios
    E uso um <email> válido
    Então finalizo minha compra
    E nenhuma mensagem de <erro> é mostrada

    Exemplos: 
      | email            | erro                          |
      | thiago@gmail.com |                               |
      | thiago.gmail.com | "e-mail com formato inválido" |

  Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
    Quando preencho meus dados obrigatórios como <nome>,<sobrenome>,<país>,<endereço>,<cidade>,<cep>,<telefone>,<email>
    E algum destes dados está vazio
    Então meu cadastro não é efetuado
    E uma mensagem de <alerta> é mostrado

    Exemplos: 
      | nome   | sobrenome | país   | endereço | cidade   | cep       | telefone     | email            | alerta                              |
      |        |           |        |          |          |           |              |                  | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  | Brasil | Rua X    | Campinas | 13000-000 | 1999999-9999 | thiago@gmail.com |                                     |
      |        | Teixeira  | Brasil | Rua X    | Campinas | 13000-000 | 1999999-9999 | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago |           | Brasil | Rua X    | Campinas | 13000-000 | 1999999-9999 | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  |        | Rua X    | Campinas | 13000-000 | 1999999-9999 | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  | Brasil |          | Campinas | 13000-000 | 1999999-9999 | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  | Brasil | Rua X    |          | 13000-000 | 1999999-9999 | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  | Brasil | Rua X    | Campinas |           | 1999999-9999 | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  | Brasil | Rua X    | Campinas | 13000-000 |              | thiago@gmail.com | "favor preencher campo(s) vazio(s)" |
      | Thiago | Teixeira  | Brasil | Rua X    | Campinas | 13000-000 | 1999999-9999 |                  | "favor preencher campo(s) vazio(s)" |
