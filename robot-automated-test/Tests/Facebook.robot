*** Settings ***
Library                Selenium2Library
Library                BuiltIn
Library                String

*** Variable ***
${url_facebook}        https://www.facebook.com
${title_facebook}      Facebook - เข้าสู่ระบบหรือสมัครใช้งาน
${input_user}          //*[@id="email"]
${input_pass}          //*[@id="pass"]
${btn_login}           //*[@class="uiButton uiButtonConfirm"]
${txt_not_me}          //*[@id="not_me_link"]
${txt_message}         //div//textarea[@name="xhpc_message"]
${username_fail}       xxx@xxx.com
${password_fail}       xxxxxxx
${username_success}    jang.jr.en@gmail.com
${password_success}    14125685

*** Test Case ***
Login facebook - Fail
    [Tags]                         Fail
    Open Browser                   about:blank                        firefox
    Go To                          ${url_facebook}
    Title Should Be                ${title_facebook}
    Input Username and Password    ${input_user}                      ${input_pass}    ${username_fail}       ${username_fail}
    Click Button Login             ${btn_login}
    Title Should Be                เข้าสู่ระบบ Facebook | Facebook
    Close Browser

Login facebook - Success
    [Tags]                         Success
    Open Browser                   about:blank                        firefox
    Go To                          ${url_facebook}
    Title Should Be                ${title_facebook}
    Input Username and Password    ${input_user}                      ${input_pass}    ${username_success}    ${password_success}
    Click Button Login             ${btn_login}
    Title Should Be                Facebook
    Close Browser

*** Keywords ***
Input Username and Password
    [Arguments]                    ${xpath_user}                      ${xpath_pass}    ${username}            ${password}
    Element Should Be Visible      ${xpath_user}
    Element Should Be Visible      ${xpath_pass}
    Input Text                     ${xpath_user}                      ${username}
    Input Text                     ${xpath_pass}                      ${password}

Click Button Login
    [Arguments]                    ${btn}
    Element Should Be Visible      ${btn}
    Click Element                  ${btn}

Verify Login Fail
    [Arguments]                    ${xpath}
    Element Should Be Enabled      ${xpath}

Verify Login Success
    [Arguments]                    ${xpath}
    Element Should Be Visible      ${xpath}