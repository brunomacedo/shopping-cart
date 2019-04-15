Feature: Selecionar produto
  Adicionar item no carrinho de compras

  Scenario:
    Given vitrine de produtos
    When aberto a página do produto
    And clicado no botão "ADD TO CART"
    Then o sistema exibe a mensagem "Success: You have added iPhone to your shopping cart!"
    And atualiza os item no carrinho de compras na parte superior do site
