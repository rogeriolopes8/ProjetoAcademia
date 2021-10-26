***Settings***
Documentation       Ações de autorização


***Keywords***
Go To Login Page
    Go To       https://bodytest-web-rogerio.herokuapp.com


Login With
    [Arguments]     ${email}    ${pass}

    Fill Text   css=input[name=email]            ${email}
    Fill Text   css=input[placeholder*=senha]    ${pass}
    Click       text=Entrar

Toaster Text Should Be
    [Arguments]                 ${expect_text}
    Wait For Elements State     css=.Toastify__toast-body >> text=${expect_text}      visible      5

Alert Text Should Be
    [Arguments]                 ${expect_text}
    Wait For Elements State     css=form span >> text=${expect_text}                   visible      5