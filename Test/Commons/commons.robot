*** Settings ***
Library           Selenium2Library
Resource          ../Variables/variables.robot

*** Keywords ***
Open Web Page
    open browser    ${URL}    ${BROWSER}
    maximize browser window
    wait until page contains    ${PageContains}
    log to console    ${pagecontains}
Close The Browser
    close browser
