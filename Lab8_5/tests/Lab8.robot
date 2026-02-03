*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    # Initialize Chrome Options
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    
    # Add arguments carefully as strings
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --remote-debugging-port\=9222

    Open Browser
    ...    url=https://computing.kku.ac.th
    ...    browser=chrome
    ...    options=${chrome_options}

    [Teardown]    Close Browser
