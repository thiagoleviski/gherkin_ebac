# language: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: 
    Dado que estou na tela de login na plataforma da EBAC-SHOP

  Cenário: Ao inserir dados válidos, deve ser direcionado para a tela de checkout
    Quando eu insiro um usuário e senha válidos
    Então sou redirecionado à tela de checkout

  Cenário: Ao inserir um dos campos inválidos, deve exibir uma mensagem de alerta
    Quando eu insiro um usuario ou senha inválidos
    Então uma mensagem de alerta é exibida: "Usuário ou senha inválidos"