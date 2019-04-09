Feature: Estoque indisponível
  Verificar estoque indisponível e retornar mensagem

  Background:
    Given um ou mais itens no carrinho de compras
    And o estoque "<stock>" igual zero
    But a quantidade "<quantity>" maior que o estoque "<stock>"
    Then o sistema exibe uma mensagem "Products marked with *** are not available in the desired quantity or not in stock!"
    And marca o item "<item_name>" com ***

  Scenario Outline: Produto indisponível
    When aberto a tela de carrinho de compras
    When atualizado a quantidade de um item no carrinho

    Examples:
      | id | item_name  |  stock  |  quantity  |
      | 1  |  iPhone    |    0    |      0     |
      | 2  |  HP LP3065 |    1    |      2     |
      | 3  |  Macbook   |   -1    |      1     |
