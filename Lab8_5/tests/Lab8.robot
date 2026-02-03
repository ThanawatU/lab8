*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Open Headless Chrome
    # 1. Define the Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage

    # 2. Force the Service path (This is the "fucking executable path" part)
    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path='/usr/bin/chromedriver')    sys, selenium.webdriver.chrome.service

    # 3. Launch the driver with the Service object
    Create Webdriver    Chrome    options=${options}    service=${service}

*** Test Cases ***
Verify KKU Computing Page
    [Documentation]    Test case for Jenkins headless execution
    Open Headless Chrome
    Go To    https://computing.kku.ac.th
    Page Should Contain    College of Computing
    Capture Page Screenshot
    [Teardown]    Close Browser
