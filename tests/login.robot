*** Settings ***
Documentation            Suite de testes de login

Resource        ../resources/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Keywords ***
