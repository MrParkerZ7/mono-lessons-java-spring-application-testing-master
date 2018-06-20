#Run this :: $ robot -d Results Tests/Amazon.robot

*** Settings ***
Documentation    Basic test Selenium2Library
Library          Selenium2Library

*** Variable ***

*** Test Case ***
User must sign in to check out
    [Documentation]    Open firefox and go to amazon and close Browser
    [Tags]             Smoke
    Open Browser       https://www.amazon.com/                            firefox
    Close Browser

*** Keywords ***
