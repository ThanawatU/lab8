*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th

*** Test Cases ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Set To Dictionary    ${options}    binary_location    /usr/bin/chromium
    Create WebDriver    Chrome    options=${options}    executable_path=/usr/bin/chromedriver
    Go To    ${URL}
    Close Browser

