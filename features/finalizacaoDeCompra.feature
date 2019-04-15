Feature: Finalizar compra
  Finalizar compra com cadastro de cliente

  Scenario:
    Given todos os campos do cadastro preenchimentos
    When os termos de política e privacidade marcado
    And ao clicar em "Continue"
    Then o sistema exibe o próximo passo "Delivery Details" para continuar com a finalização da compra
    And exibe os dados para confirmação da compra
    And ao clicar em "Confirm order"
    Then o sistema redireciona para tela de pedido efetuado com sucesso.
