
Dado('que tenho as credenciais') do
    visit "https://mail.terra.com.br/"
  end
  
  Quando('eu faco login com {string} e {string}') do |username, password|
    find('input[id=username]').set username
    find('input[id=password]').set password
    click_button 'Entrar'
    sleep 1
  end

  Então('devo receber uma mensagem de erro') do
    expect(page.has_text?('Usuário ou senha incorretos.')).to eq true
  end