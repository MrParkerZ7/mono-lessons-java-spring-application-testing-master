*** Settings ***
Documentation    Lazada Test
Library          Selenium2Library

*** Variable ***
${WEB_URL}       https://www.lazada.co.th/
${BROWSER}       firefox

*** Test Case ***
Search Product IphoneS6
    [Documentation]             Search IphoneS6 result must be found or not found
    Open Browser                ${WEB_URL}                                           ${BROWSER}
    Input Text                  q                                                    IphoneS6
    Click Element               xpath=//button[@class="search-box__button--1oH7"]
    Wait Until Page Contains    ค้นพบสินค้าสำหรับ "IphoneS6"
    Close Browser

# Click Element :: mention to click some element in page
# xpath=//button[@class="search-box__button--1oH7"] :: 'xpath' is mean som path to click in here || '//button' is mean element button

*** Keywords ***
