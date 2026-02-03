*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    Open Browser    https://computing.kku.ac.th    chrome    executable_path=/usr/bin/chromedriver
    Close Browser

