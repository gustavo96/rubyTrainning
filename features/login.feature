#language:pt
Funcionalidade: Login

Cenário: login com erro
Dado que tenho as credenciais
Quando eu faco login com "test@test.com" e "123456"
Então devo receber uma mensagem de erro
