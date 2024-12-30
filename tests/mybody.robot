*** Settings ***
Documentation        Suite de testes da funcionalidade de cadastro de medidas no aplicativo android

Resource            ../resources/Base.resource

Test Setup        Start session
Test Teardown     Finish session
Library    XML

*** Test Cases ***
Deve poder cadastrar minhas medidas
    Sigin with document    51676727833
    User is logged in
    Touch my body
    Send weight and height    97    175
    Popup have text       Seu cadastro foi atualizado com sucesso

    Set user token
    Get account by name    Emily Stone

    # Should Be Equal    97    ${data}[account][weight]