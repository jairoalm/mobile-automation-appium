*** Settings ***
Documentation            Suite de testes de login

Resource        ../resources/Base.resource

Test Setup        Start session
Test Teardown     Finish session
Library    XML

*** Test Cases ***

Deve logar com CPF e IP
    Input Text    xpath=//android.widget.EditText[@resource-id="ipAddress"]    192.168.1.11
    Input Text    xpath=//android.widget.EditText[@resource-id="cpf"]    51676727833

    Click Element   xpath=//android.widget.TextView[@text="Entrar"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="myAccountTitle"]    10
    Element Text Should Be    xpath=//android.widget.TextView[@resource-id="myAccountTitle"]    Sua transformação começa aqui!