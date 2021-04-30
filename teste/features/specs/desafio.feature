# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras


  @busca_termo_valido
  Esquema do Cenario: Busca valida

    Dado que esteja na página inicial
    Quando busco por:
    |     produto     | 
    | <produto_input> |     
    Então devem ser retornados os objetos
    E eu adiciono a peça ao carrinho
    Então deve aparecer o "<aviso>"

    Exemplos:
      |   produto_input  |                      aviso                     |
      |       shirt      |Product successfully added to your shopping cart|
      |       shoes      |Product successfully added to your shopping cart|
      |       skirt      |Product successfully added to your shopping cart|

  @busca_sem_resultados
  Esquema do Cenario: Busca invalida

    Dado que esteja na página inicial   
    Quando procuro pelo "<item>"
    Então deve retornar a mensagem "<mensagem>" + "<item>"
    
    Exemplos:
      |    item    |                 mensagem                |
      |   sandals  |  No results were found for your search  |
      |            |      Please enter a search keyword      |
   