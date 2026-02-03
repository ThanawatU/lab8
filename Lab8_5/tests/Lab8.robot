*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser To Login Page
    Open Browser    https://computing.kku.ac.th    chrome    options=--headless=new;--no-sandbox;--disable-dev-shm-usage
    Close Browser

