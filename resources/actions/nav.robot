***Settings***
Documentation       Ações do menu superior de navegação


***Keywords***
User Should Be Logged In
    [Arguments]     ${user_name}
    Get Text    css=aside strong    Should be    ${user_name}