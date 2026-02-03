*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    Open Browser    https://computing.kku.ac.th    chrome    options=add_argument(--headless);add_argument(--no-sandbox);add_argument(--disable-dev-shm-usage)
    Close Browser

