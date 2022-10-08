# language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: 
    Dado que estou na tela de login na plataforma da EBAC-SHOP

  Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
    Quando eu insiro um usuário ou email válido
    E uma senha válida
    Então sou redirecionado à tela de checkout

  Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
    Quando eu insiro um <usuario> ou <email>
    E uma <senha>
    Então uma <ação> é executada

    Exemplos:
      | usuario | email            | senha   | ação                         |
      | thiago  |                  | abc@123 | tela de checkout             |
      |         | thiago@gmail.com | abc@123 | tela de checkout             |
      | Thiago  |                  | abc@123 | "Usuário ou senha inválidos" |
      | thiago  |                  | Abc@123 | "Usuário ou senha inválidos" |
      |         | Thiago@gmail.com | abc@123 | "Usuário ou senha inválidos" |
      |         | thiago@gmail.com | Abc@123 | "Usuário ou senha inválidos" |
      | thiago  |                  |         | "Usuário ou senha inválidos" |
      |         | thiago@gmail.com |         | "Usuário ou senha inválidos" |
