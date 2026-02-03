*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    
    Create Webdriver    Chrome    options=${chrome_options}
    Go To    https://computing.kku.ac.th
    Capture Page Screenshot
    [Teardown]    Close Browser
