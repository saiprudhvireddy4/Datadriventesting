*** Settings ***
Library   SeleniumLibrary
Variables  ../login/bookmyshow.py

*** Keywords ***
open my browser
    [Arguments]  ${siteurl}  ${browser}
    open browser     ${siteurl}  ${browser}
    maximize browser window
enter username
    [Arguments]  ${username}
    input text  ${txt_username}  ${username}
enter password
    [Arguments]  ${password}
    input text   ${txt_password}    ${password}
enter signin
    click button  ${btn_signin}
#verify sucessfull
 #   title should not be  Welcome: Mercury Tours
close my browser
    close all browsers
