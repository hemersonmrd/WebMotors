Dado('já tenho realizado uma pesquisa de veiculo') do
  visit 'https://www.webmotors.com.br/carros/estoque/chevrolet/astra?tipoveiculo=carros&marca1=CHEVROLET&modelo1=ASTRA'
  click_button 'OK'
end

Quando('preencher no textbox o novo veiculo') do
  result.txtSearch.set 'City'
  result.select_option('City')
end

Então('a pesquisa é feito corretamente') do
  expect(result.surveyed_cars).to have_text 'City'
end

