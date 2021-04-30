Dado('que acesso a página de login') do
    @login_page.open
end

Quando('submeto minhas credenciais com {string} e {string}') do |email, password|
    @login_page.with(email, password)
end
  
Então('sou redirecionado para minha conta') do
    expect(@account.logado).to have_text "My account"
end

  
Então("vejo a mensagem de alerta: {string}") do |expect_alert|
    expect(@alert.red).to eql expect_alert
end