*** Settings ***
Library     Browser


*** Variables ***
${url}                  https://www.amazon.com.br/
${imagem}
...                     xpath=//img[@src='https://images-na.ssl-images-amazon.com/images/G/32/kindle/devices/2022/H2/BTF/TESTE_ATF_DESK/br-desknormal-quad_card_d-bo_blk-186x116._SY116_CB608682697_.jpg']
${tituloDoProduto}      id=productTitle


*** Test Cases ***
CLick on image
    New Page    ${url}
    Click    ${imagem}

    Get text
    ...    ${tituloDoProduto}
    ...    contains
    ...    Echo Dot (4ª Geração): Smart Speaker com Alexa | Música, informação e Casa Inteligente - Cor Preta
    Take Screenshot
