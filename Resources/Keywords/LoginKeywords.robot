*** Settings ***
Library     SeleniumLibrary
Resource    ../PO/Login.robot

*** Variables ***
${Email_Value}                  standard_user
${Password_Value}                secret_sauce


*** Keywords ***

Try_ToLogin_WithoutAdding_Email&Password
   click_login
   check_messageappears_incaseof_leavingemailempty

Login_As_AnyUser
   enteremail           ${email_value}
   enterpassword       ${password_value}
   click_login






