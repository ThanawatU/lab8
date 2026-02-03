*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${caps}=    Create Dictionary
    ...    browserName=chrome
    ...    goog:chromeOptions={'args': ['--headless', '--no-sandbox', '--disable-dev-shm-usage']}

    Open Browser
    ...    https://computing.kku.ac.th
    ...    chrome
    ...    executable_path=/usr/bin/chromedriver
    ...    desired_capabilities=${caps}

    Close Browser

