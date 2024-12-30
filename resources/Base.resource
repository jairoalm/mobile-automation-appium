*** Settings ***
Documentation        Arquivo pricipal do projeot de testes automatizados para Mobile

Library            AppiumLibrary
# Library            JSONLibrary

# Library            ../../Database.py

Resource           ../services/Service.resource
Resource           ./actions/login.resource
Resource           ./actions/account.resource
Resource           ./actions/mybody.resource
Resource           ./actions/mybody.resource
Resource           ./actions/components/menu.resource
Resource           ./actions/components/popup.resource

*** Keywords ***
Start session
    Open Application    http://localhost:4723  
    ...    platformName=Android
    ...    appium:deviceName=Emulator
    ...    appium:automationName=UIAutomator2
    ...    appium:app=${EXECDIR}\\app\\smartbit-beta.apk
    ...    appium:udid=emulator-5554
    ...    autoGrantPermissions=${True}
    
    Wait Until Page Contains    IP da API    30

Finish session
    Capture Page Screenshot
    Close Application