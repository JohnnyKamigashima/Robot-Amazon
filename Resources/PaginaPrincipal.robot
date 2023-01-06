*** Settings ***
Library     Browser


*** Variables ***
${url}                              https://www.amazon.com.br/
${botaoProcura}                     id=nav-search-submit-button
${campoBusca}                       id=twotabsearchtextbox
${adicionaAoCarrinho}               id=add-to-cart-button
${botaoCarrinho}                    id=nav-cart
${subtotalTexto}                    id=sc-subtotal-label-buybox
${primeiroItemRetornadoDaBusca}


*** Keywords ***
Acessa pagina
    #New Browser    headless=False
    New Page    ${url}

Busca produto e adiciona ao carrinho "${nomeDoProduto}"
    #Set Strict Mode    False    Test
    ${itemRetornadoDaBusca}=    Set Variable    xpath=//a[.//text()='${nomeDoProduto}'][1]

    Wait For Elements State    ${campoBusca}
    Type Text    ${campoBusca}    ${nomeDoProduto}
    Take Screenshot

    Wait For Elements State    ${botaoProcura}
    Click    ${botaoProcura}

#    Wait For Elements State    ${textoTituloResultado} >> text=${nomeDoProduto}
    Wait for Elements State    ${primeiroItemRetornadoDaBusca}
    Take Screenshot
    Click    ${primeiroItemRetornadoDaBusca}

    Wait For Elements State    ${adicionaAoCarrinho}
    Take Screenshot

Adiciona ao carrinho
    Click    ${adicionaAoCarrinho}

Verifica Carrinho com itens "${numero}"
    Click    ${botaoCarrinho}
    Get Text    ${subtotalTexto}    contains    ${numero}
