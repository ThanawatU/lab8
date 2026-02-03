*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Open Headless Chrome
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    # Selenium 4.x handles the driver automatically if you only pass options
    Create Webdriver    Chrome    options=${options}

*** Test Cases ***
Verify KKU Computing Page
    [Documentation]    Test case for Jenkins headless execution
    Open Headless Chrome
    Go To    https://computing.kku.ac.th
    Page Should Contain    College of Computing
    Capture Page Screenshot
    [Teardown]    Close Browser
