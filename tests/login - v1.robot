***Settings***
Documentation       Suite de testes de login do adm

Library     Browser


***Test Cases***
Login do administrador
# no new browser vem true por padrão, colocar false o navegador abre e a gente ver funcionando
    New Browser     chromium    False
    New Page    https://bodytest-web-rogerio.herokuapp.com

#input é o elemento que eu quero buscar / [] name -> é a propriedade  / email -> valor da propriedade
#input[name=email] -> seletor css

    Fill Text   css=input[name=email]       admin@bodytest.com
    Fill Text   css=input[name=password]    pwd123
    CLick       text=Entrar
    
# Equall e Shold be é a mesma coisa

    Get Text    css=aside strong    Should be    Administrador

    Take Screenshot

    # a pagina fica parada 5segundos
    # Sleep   5 

Senha Incorreta
    New Browser     chromium    False
    New Page    https://bodytest-web-rogerio.herokuapp.com

    Fill Text   css=input[name=email]       admin@bodytest.com
    Fill Text   css=input[name=password]    pasd123
    CLick       text=Entrar

    Wait For Elements State     css=.Toastify__toast-body   visible    5
# coloca o ponto "." pq é uma class  / se for # ele vai entender que é o ID
    Get Text                    css=.Toastify__toast-body   Should be   Usuário ou senha inválido

# agora vou combinar as duas linhas de codigo a cima:
#   Wait For Elements State     css=.Toastify__toast-body >> text=Usuário ou senha inválido     visible     5

    Take Screenshot

Email incorreto

    New Browser     chromium    False
    New Page    https://bodytest-web-rogerio.herokuapp.com

    Fill Text   css=input[name=email]       admin&bodytest.com.br
    Fill Text   css=input[name=password]    pwd123
    CLick       text=Entrar

    Wait For Elements State     css=form span >> text=Informe um e-mail válido     visible     5

Senha não informada
    New Browser     chromium    False
    New Page    https://bodytest-web-rogerio.herokuapp.com

    Fill Text   css=input[name=email]       admin@bodytest.com
    #${EMPTY} é um valor vazio, nativo do robot
    Fill Text   css=input[name=password]    ${EMPTY}
    CLick       text=Entrar

    Wait For Elements State     css=form span >> text=A senha é obrigatória     visible     5    

Email não informado
    New Browser     chromium    False
    New Page    https://bodytest-web-rogerio.herokuapp.com

    Fill Text   css=input[name=email]       ${EMPTY}
    #${EMPTY} é um valor vazio, nativo do robot
    Fill Text   css=input[name=password]    pwd123
    CLick       text=Entrar

    Wait For Elements State     css=form span >> text=O e-mail é obrigatório     visible     5 

Email e senha não informado
    New Browser     chromium    False
    New Page    https://bodytest-web-rogerio.herokuapp.com

    Fill Text   css=input[name=email]       ${EMPTY}
    #${EMPTY} é um valor vazio, nativo do robot
    Fill Text   css=input[name=password]    ${EMPTY}
    CLick       text=Entrar

    Wait For Elements State     css=form span >> text=O e-mail é obrigatório     visible     5 
    Wait For Elements State     css=form span >> text=A senha é obrigatória     visible     5 
