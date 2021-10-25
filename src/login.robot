*** Settings ***
Library     SeleniumLibrary
Resource    data.robot
Resource    object.robot
*** Test Cases ***
Login Success
    Buka Browser
    Login
    Input Id
    Input User Password     ${password_success}
    Klik Submit Login
    Verif Login
    Tutup Browser

Login Failed
    Buka Browser
    Login
    Input Id
    Input User Password     ${password_fail}
    Klik Submit Login
    Verif Failed Login
    Tutup Browser
*** Keywords ***
Buka Browser
    Open Browser       ${address_Bukalapak}        chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${img_LogoBukalapak}     30

Login
    Click Element       ${btn_Login}
    Wait Until Element Is Visible    ${input_id}     30

Input Id
    Input Text      ${input_id}    ${id}
    Click Element   ${btn_id}
    Wait Until Element Is Visible    ${input_password}     30

Input User Password
    [Arguments]     ${password}
    Input Password      ${input_password}       ${password}
Klik Submit Login
    Click Element       ${btn_submit_login}

Verif Login
    Element Should Not Be Visible       ${btn_Login}

Verif Failed Login
     Wait Until Element Is Visible    ${lbl_errorpass}     30
    Element Text Should Be        ${lbl_errorpass}      Password yang kamu masukkan salah. Silakan coba lagi.

Tutup Browser
    Close Browser