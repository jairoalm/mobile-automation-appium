*** Settings ***
Documentation            Suite de testes de login

Resource        ../resources/Base.resource

Test Setup        Start session
Test Teardown     Finish session
Library    XML

*** Test Cases ***

Deve logar com CPF e IP
    Sigin with document    51676727833
    User is logged in

Não deve logar com cpf não cadastrado
    [Tags]    login_invalid
    Sigin with document    43409505059    
    Popup have text        Acesso não autorizado! Entre em contato com a central de atendimento


Não deve logar com cpf inválido
    [Tags]    login_invalid
    Sigin with document    43406705059    
    Popup have text        CPF inválido, tente novamente