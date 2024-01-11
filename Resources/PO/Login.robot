*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${waitingTime}    20s
${Email_Field}                   xpath=//input[@id='user-name']
${Password_Field}             xpath=//input[@id='password']
${Login_BTN}          xpath=//input[@id='login-button']

*** Keywords ***


EnterEmail
    [Arguments]         ${Email_Value}
    wait until element is visible     ${email_field}      ${waitingtime}
    input text     ${email_field}     ${Email_Value}

EnterPassword
   [Arguments]       ${Password_Value}
   wait until element is visible     ${password_field}   ${waitingtime}
   input text       ${password_field}    ${Password_Value}

Click_Login
  wait until element is visible     ${login_btn}     ${waitingtime}
  click button      ${login_btn}


Check_MessageAppears_Incaseof_LeavingEmailEmpty
   wait until page contains   Username is required

Check_MessageAppears_Incaseof_LeavingPasswordEmpty
   wait until page contains   Password is required
