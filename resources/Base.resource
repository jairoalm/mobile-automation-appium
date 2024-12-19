*** Settings ***
Documentation        Arquivo pricipal do projeot de testes automatizados para Mobile

Library            AppiumLibrary

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