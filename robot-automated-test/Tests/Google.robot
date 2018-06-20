#Run this :: $ robot -d Results Tests/Google.robot
*** Settings ***
Documentation    Search Park in google
Library          Selenium2Library

*** Variable ***

*** Test Case ***
Search park in google
    [Documentation]             Search google with Park Keywords
    Open Browser                https://www.google.co.th/           firefox
    Wait Until Page Contains    Google
    Input Text                  gs_taif0                            Park  #autocomplate was disabled
    Close Browser

*** Keywords ***