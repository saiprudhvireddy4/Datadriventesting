*** Settings ***
Library  SeleniumLibrary
Resource   ../resources/fblogin.robot
*** Variables ***
${browser}  chrome
${siteurl}  https://www.facebook.com/login/?privacy_mutation_token=eyJ0eXBlIjowLCJjcmVhdGlvbl90aW1lIjoxNjgwODUxNzk5LCJjYWxsc2l0ZV9pZCI6MjY5NTQ4NDUzMDcyMDk1MX0%3D
${user}  tutorial
${password}   tutorial
*** Test Cases ***
Login test
    open my browser  ${siteurl}  ${browser}
    enter username   ${user}
    enter password   ${password}
    enter signin
    close my browser

