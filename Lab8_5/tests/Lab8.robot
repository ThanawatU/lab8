*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${chrome args}=    Create List
    ...    --headless
    ...    --no-sandbox
    ...    --disable-dev-shm-usage
    ...    --disable-gpu
    ...    --remote-debugging-port=9222

    ${caps}=    Create Dictionary
    ...    browserName=chrome
    ...    goog:chromeOptions={'args': ${chrome args}}

    Open Browser
    ...    https://computing.kku.ac.th
    ...    chrome
    ...    executable_path=/usr/bin/chromedriver
    ...    desired_capabilities=${caps}

    Close Browser

