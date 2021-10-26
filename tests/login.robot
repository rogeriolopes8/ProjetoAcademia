***Settings***
Documentation       Nova versão do login
Resource    ../resources/base.robot

# no robotframework, existe 4 ganchos, eles são:
# Suite Setup     Log to console      tudo aqui acontece antes da suite
# Suite Setup     Log to console      tudo aqui acontece depois da suite
# Test Setup      Log to console      tudo aqui acontece antes do teste
# Test Teardown   Log to console      tudo aqui acontece depois do teste
Suite Setup     Start Browser Session

***Test Cases***

Login do administrador
    Go To Login Page
    Login With                  admin@bodytest.com  pwd123 
    User Should Be Logged In    Administrador

    Take Screenshot

Senha Incorreta
    Go To Login Page
    Login With                      admin@bodytest.com  pasd123
    Toaster Text Should Be          Usuário ou senha inválido


Email incorreto
    Go To Login Page
    Login With              admin&bodytest.com.br  pwd123 

    Alert Text Should Be    Informe um e-mail válido     

Senha não informada
    Go To Login Page
    Login With              admin@bodytest.com  ${EMPTY} 

    Alert Text Should Be    A senha é obrigatória     

Email não informado
    Go To Login Page
    Login With               ${EMPTY}  pwd123 

    Alert Text Should Be    O e-mail é obrigatório    

Email e senha não informado
    Go To Login Page
    Login With              ${EMPTY}    ${EMPTY} 

    Alert Text Should Be    O e-mail é obrigatório     
    Alert Text Should Be    A senha é obrigatória      