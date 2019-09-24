*** Settings ***
Library    Selenium2Library
*** Variables ***
${BROWSER}        chrome
${HITT URL}    http://www.hitachi-hitt.com/?module=tec&pages=Technical_th_new
*** Keywords ***
เข้าไปที่เว็บ HITT
    Open Browser    ${HITT URL}    ${BROWSER}
กรอกข้อความ
    Input Text    subject    ทดสอบ
    Input Text    detail    กาญจนา
    Input Text    firstname    กาญจนา
    Input Text    lastname    สายพนัส
    Input Text    email    k.saipanas@gmail.com
    Input Text    tel    0849001121
Submit   
    Submit Form    name=contact
Confirm Preview
    Click Button    id=sendBtn
*** Test Cases ***
Fill Form
    เข้าไปที่เว็บ HITT
    กรอกข้อความ
    Submit
    Confirm Preview
    sleep  10s
Test Teardown    Close Browser