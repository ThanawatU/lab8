*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    
    Open Browser    https://computing.kku.ac.th    chrome    options=${options}
    Close Browser
