*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    ${chrome options}=    Create Dictionary
    ...    args=--headless,--no-sandbox,--disable-dev-shm-usage

    Open Browser
    ...    https://computing.kku.ac.th
    ...    chrome
    ...    executable_path=/usr/bin/chromedriver
    ...    chrome_options=${chrome options}

    Close Browser

