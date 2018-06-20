*** Settings ***

*** Variable ***
${url_facebook}        https://www.facebook.com
${title_facebook}      Facebook - เข้าสู่ระบบหรือสมัครใช้งาน
${input_user}          //*[@id="email"]
${input_pass}          //*[@id="pass"]
${btn_login}           //*[@class="uiButton uiButtonConfirm"]
${txt_not_me}          //*[@id="not_me_link"]
${txt_message}         //div//textarea[@name="xhpc_message"]
${username_fail}       xxxxx@xxxxx.com
${password_fail}       12345678
${username_success}    jang.jr.en@gmail.com
${password_success}    14125685

*** Test Case ***

*** Keywords ***
Verify facebook page
    [Arguments]                ${title}
    Title Should Be            ${title}
Input Username and Password
     [Arguments]      ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Element Should Be Visible    ${xpath_user}
     Element Should Be Visible    ${xpath_pass}
     Input Text       ${xpath_user}       ${username}
     Input Text       ${xpath_pass}       ${password}
Click Button Login
     [Arguments]       ${btn}
     Element Should Be Visible    ${btn}
     Click Element        ${btn}
Verify Login Fail
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}
Verify Login Success
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}
