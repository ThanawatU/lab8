*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Evaluate    $options.add_argument("--headless")
    Evaluate    $options.add_argument("--no-sandbox")
    Evaluate    $options.add_argument("--disable-dev-shm-usage")
    
    # We use 'chrome' and pass the options. 
    # If it still fails, we'll need to verify the path in your Jenkins shell.
    Open Browser    https://computing.kku.ac.th    browser=chrome    options=${options}
    
    Close Browser
