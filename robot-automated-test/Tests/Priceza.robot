# robot -d Results Tests/Priceza.robot
*** Settings ***
Documentation    Priceza Test
...              Web is Runing
...              Search is working
...              Search with max price
...              Search with min price
Library          Selenium2Library

*** Variable ***
${product}       Electric Skateboard

*** Keywords ***
Search Product
    Open Browser                https://www.priceza.com/                                             firefox
    Title Should Be             เปรียบเทียบราคาและเช็คราคาล่าสุดก่อนซื้อสินค้าทุกครั้งที่ Priceza
    Input Text                  searchHomeKeyword                                                    ${product}
    Click Button                searchHomeBtn
    Title Should Be             ${product} เช็คราคาล่าสุด ราคาถูก ราคาปัจจุบัน

Define Max/Min Price
    [Arguments]                 ${input_into}                                                        ${price}      ${expect_contain}
    Input Text                  ${input_into}                                                        ${price}
    Click Button                //button[@class="btn"]
    Wait Until Page Contains    ${expect_contain}

*** Test Case ***
Search Product
    Search Product
    [Teardown]                  Close Browser

Search product with max price
    Search Product
    Define Max/Min Price        search-price-max                                                     5000          ฿ 0 - 5,000
    [Teardown]                  Close Browser

Search product with min price
    Search Product
    Define Max/Min Price        search-price-min                                                     5000          ฿ 5,000 - สูงสุด
    [Teardown]                  Close Browser