*** Settings ***
Library  SeleniumLibrary
Resource       ../Resources/Keywords/CommonKeywords.robot
Resource      ../Resources/Keywords/LoginKeywords.robot


#Test Setup    Begin Web Test_AdminServer
#Test Teardown  End Test

*** Variables ***


*** Test Cases ***

TestCase Jira ID 1
    [Documentation]       Login_To_SwagLabs_Withoutadding_EmailORPassword
    [Tags]  Smoke , Regression
    start_test
    try_tologin_withoutadding_email&password

TestCase Jira ID 2
    [Documentation]       Login_To_PromizeSuccessfully
    [Tags]  Smoke , Regression
    Login_As_AnyUser