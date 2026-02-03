*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Evaluate    $options.add_argument("--headless")
    Evaluate    $options.add_argument("--no-sandbox")
    Evaluate    $options.add_argument("--disable-dev-shm-usage")

    Open Browser    https://computing.kku.ac.th    browser=chrome    options=${options}
    
    # Simple check to confirm we are there
    Title Should Be    College of Computing

    [Teardown]    Close Browser
