*** Settings ***
Documentation    Lazada robot test
Library          Selenium2Library

*** Variable ***

*** Test Case ***
User must search in IphoneS6 in Lazada
    [Documentation]             Open and search in lazada
    Open Browser                https://www.lazada.co.th/                            firefox
    Input Text                  q                                                    IphoneS6
    Click Element               xpath=//button[@class="search-box__button--1oH7"]
    Wait Until Page Contains    ค้นพบสินค้าสำหรับ "IphoneS6"
    Close Browser

# Click Element :: mention to click some element in page
# xpath=//button[@class="search-box__button--1oH7"] :: 'xpath' is mean som path to click in here || '//button' is mean element button

*** Keywords ***
