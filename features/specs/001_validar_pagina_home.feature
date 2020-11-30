#language: pt

  Funcionalidade: Eu como usuário quero poder pesquisar corretamente um veiculo na tela home da página WebMotors

    Contexto:
      Dado estou na página home da WebMotors

    Cenário: Validar o campo de pesquisa de veículos e efetuar pesquisa
      Quando preencher o campo de texto com o veículo <veiculo>
      E selecionar a opção com a marca + veículo no autocomplete
      Então a opção é selecionada corretamente
      E carrega automaticamente a opção de veículo selecionado

      Exemplos:
        |veiculo|
        |"City"   |
        |"Gol"     |
        |"Uno"     |
        |"Corolla"  |

      Cenário: Validar o botão de ver ofertas de carro
        Quando clicar no botão ver ofertas
        Então deverá aparecer ofertas de carros novos e usados

      Cenário: Validar o campo de pesquisa de motos e efetuar pesquisa
        Dado estou no campo de pesquisas de moto
        Quando preencher o campo de texto com a moto <moto>
        E seleciono a opção com a marca + modelo da moto no autocomplete
        Então a opção de moto é selecionada corretamente
        E carrega automaticamente a opção de moto selecionada

        Exemplos:
        |moto|
        |"Fazer"|
        |"Hornet"|

      Cenário: Validar o botão de ver ofertas de moto
        Dado estou no campo de pesquisa de moto
        Quando clicar no botão ver ofertas
        Então deverá aparecer ofertas de moto novas e usadas

      Cenário: Validar pesquisas feitas na opção "Ultimas buscas"
        Dado já tenho feito uma pesquisa de carro
        E estou na página home da WebMotors
        Quando clicar em uma das ultimas pesquisas
        Então carrega a ultima pesquisa feita corretamente