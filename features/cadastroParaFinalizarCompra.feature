Feature: Cadastro de cliente
  Novo cadastro de cliente para finalizar a compra

  Scenario:
    Given a finalização de um ou mais itens no carrinho de compras
    When aberta a página de "Checkout"
    And selecionado a opção de "Register Account" em "New Customer"
    And clicado no botão "Continue"
    Then é aberto o formulário para preenchimento dos dados do cliente
    And atualiza os item no carrinho de compras na parte superior do site
