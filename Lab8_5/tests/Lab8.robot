*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    Open Browser    https://computing.kku.ac.th    browser=chrome
    Close Browser
