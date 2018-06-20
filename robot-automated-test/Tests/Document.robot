*** Settings ***
Documentation       This is Documentation of Settings/Variable/TestCase/Keywords

*** Variable ***
${TEST_VARIABLE}    Welcome to Robot document
# '${TEST_VARIABLE}' :: Variable name
# 'Welcome to Robot document' :: Value

*** Keywords ***
Test Keywords
    Click Button                  ok_button
# 'Test Keywords' :: Just like function name in any language
# 'Click Button' :: One of keyword of Library which use to Click button
# 'ok_button' :: Which the name of button

Test Keywords2
    [Arguments]                   ${param}
    Input Text                    field_name        ${param}
# 'Test Keywords2' :: Which is the name of function
# 'Input Text' :: Is the one of keyword in Library which use to Input text
# 'field_name' :: Which is define name of field
# '${param}' :: Is the method to involke variables to use
# Summary :: Keywords is the function for tell robot to do somgthing which we want

*** Test Case ***
Name Test Case
    Open Browser To Login Page
    Input Text                    username_field    username
    Input Text                    password_field    password
    Click Button                  ok_button
    [Teardown]                    Close Browser

# 'Open Browser To Login Page' :: Is we create new keyords
# Input Text :: Which we fill username into text
# Input Text :: And annother one which we fill password into text
# Click Button :: Is the command to click ok_button to login
# [Teardown] :: Close Browser which is the command to close Browser
