Dado('estou na página home da WebMotors') do
  visit 'https://www.webmotors.com.br/'
end

Quando('preencher o campo de texto com o veículo {string}') do |veiculo|
  @veiculo = veiculo
  @home = home
  @home.searchBar.set @veiculo
end

Quando('selecionar a opção com a marca + veículo no autocomplete') do
  @option_select = @home.searchBar.value
  @home.select_option(@veiculo)
  end

Então('a opção é selecionada corretamente') do
  expect(@option_select).to have_text @veiculo
end

Então('carrega automaticamente a opção de veículo selecionado') do
  @result = result

  expect(@result.surveyed_cars).to have_text @veiculo
end

Dado('estou no campo de pesquisas de moto') do
  find(:xpath, '/html/body/div[1]/main/div[2]/div/div[1]/div[1]/h2[1]').click
end

Quando('preencher o campo de texto com a moto {string}') do |moto|
  @moto = moto
  @home = home
  @home.searchBar.set @moto
end

Quando('seleciono a opção com a marca + modelo da moto no autocomplete') do
  @option_select = @home.searchBar.value
  @home.select_option(@moto)
end

Então('a opção de moto é selecionada corretamente') do
  expect(@option_select).to have_text @moto
end

Então('carrega automaticamente a opção de moto selecionada') do
  @result = result
  expect(@result.surveyed_cars).to have_text @moto
end

Quando('clicar no botão ver ofertas') do
  @home = home
  @home.btnSearch.click
end

Então('deverá aparecer ofertas de carros novos e usados') do
  @result = result
  expect(@result.surveyed_cars).to have_text "Novos"
end

Dado('estou no campo de pesquisa de moto') do
  find(:xpath, '/html/body/div[1]/main/div[2]/div/div[1]/div[1]/h2[1]').click
end

Então('deverá aparecer ofertas de moto novas e usadas') do
  @result = result
  expect(@result.surveyed_cars).to have_text "Novas"
end

Dado('já tenho feito uma pesquisa de carro') do
  @veiculo = "City"
  @home = home
  @home.searchBar.set @veiculo
  @home.select_option(@veiculo)
  @result = result
  expect(@result.surveyed_cars).to have_text @veiculo
end

Quando('clicar em uma das ultimas pesquisas') do
  @home.select_option("CITY")
end

Então('carrega a ultima pesquisa feita corretamente') do
  expect(@result.surveyed_cars).to have_text @veiculo
end

