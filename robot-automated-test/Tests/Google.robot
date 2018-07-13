#Run this :: $ robot -d Results Tests/Google.robot
*** Settings ***
Documentation    Search Park in google
Library          Selenium2Library

*** Variable ***

*** Test Case ***
Search park in google
    [Documentation]             Search google with Park Keywords
    Open Browser                https://www.google.co.th/           firefox
    Set Selenium Speed          0.5                                 #Delay time
    Wait Until Page Contains    Google
    Input Text                  lst-ib                              Park
    Close Browser

*** Keywords ***