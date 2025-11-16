*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Keywords ***
Reset Counter
    Go To  ${HOME_URL}
    Click Button  Nollaa

*** Test Cases ***
When value is set to 10 the counter shows 10
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 10 kertaa

When value is set to 100 and button is pressed the counter shows 101
    Go To  ${HOME_URL}
    Input Text  value  100
    Click Button  Aseta arvo
    Click Button  Paina
    Page Should Contain  nappia painettu 101 kertaa
