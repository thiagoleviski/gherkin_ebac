# language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: 
    Dado que estou na tela de login na plataforma da EBAC-SHOP

  Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
    Quando eu insiro um usuário "thiago@gmail.com"
    E a senha "abc@123"
    Então sou redirecionado à tela de checkout

  Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
    Quando eu insiro um usuario "xxxx.gmail.com"
    E a senha "12"
    Então uma mensagem de alerta é exibida: "Usuário ou senha inválidos"