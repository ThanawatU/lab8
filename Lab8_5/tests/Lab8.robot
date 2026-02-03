*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --remote-debugging-port=9222
    
    # Optional: If you must specify the executable path, use the 'service' argument pattern 
    # or ensure chromedriver is in your system PATH (recommended for Jenkins/Docker).
    
    Open Browser
    ...    url=https://computing.kku.ac.th
    ...    browser=chrome
    ...    options=${chrome_options}

    [Teardown]    Close Browser
