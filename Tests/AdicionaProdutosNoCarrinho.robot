*** Settings ***
Library    Browser
Resource    ../Resources/PaginaPrincipal.robot

*** Test Cases ***
Adiciona 3 itens no carrinho e verifica no checkout
    Acessa pagina

    Busca produto e adiciona ao carrinho "Fone de Ouvido Bluetooth JBL Tune 510BT Pure Bass Preto - JBLT510BTBLK"
    Adiciona ao carrinho
    
    Busca produto e adiciona ao carrinho "Cafeteira Espresso Super Automática, Philips Walita, 220V"
    Adiciona ao carrinho
    
    Busca produto e adiciona ao carrinho "Barbeador Elétrico Philips AquaTouch Series 1000 - S1121/41 Bivolt"
    Adiciona ao carrinho

    Verifica Carrinho com itens "3"
