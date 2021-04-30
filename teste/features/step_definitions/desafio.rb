Dado('que esteja na página inicial') do
    @search_page.open
end

Quando('busco por:') do |table|
    @object = table.hashes.first     
    @search_page.search(@object)
end
  
Então('devem ser retornados os objetos') do
    expect(@search_page.nota).to have_content "#{@object[:produto]}".upcase
end

Então('eu adiciono a peça ao carrinho') do
    @search_page.adicionar
end
  
Então('deve aparecer o {string}') do |aviso|
    expect(@search_page.cart).to have_content aviso 
end

Quando('procuro pelo {string}') do |item|
    find("input[id='search_query_top']" , visible: false).set item
    click_button "submit_search"
end

Então('deve retornar a mensagem {string} + {string}') do |mensagem, item|
    @alerta = find(".alert-warning").text
    expect(@alerta).to have_text mensagem
end
  
