*** Settings ***
Library    Selenium2Library
*** Variables ***
${BROWSER}        chrome
${GOOGLE URL}    http://www.google.com
*** Keywords ***
เข้าไป google
    Open Browser    ${GOOGLE URL}    ${BROWSER}
ค้นหาคำว่าสวัสดี
    Input Text    q    สวัสดี
    Click Button    name=btnK
รอจนกว่าจะเจอคำว่าสวัสดีตอนเช้า
    Wait Until Page Contains    สวัสดีตอนเช้า
*** Test Cases ***
Search
    เข้าไป google
    ค้นหาคำว่าสวัสดี
    รอจนกว่าจะเจอคำว่าสวัสดีตอนเช้า
Test Teardown    Close Browser