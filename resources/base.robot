***Settings***
Documentation       arquivo base do projeto de automação

Library     Browser

Resource    actions/auth.robot
Resource    actions/nav.robot


***Keywords***

Start Browser Session
    New Browser     chromium        False   
    New Page        about:blank
#about:blank acessar uma pagina em branco