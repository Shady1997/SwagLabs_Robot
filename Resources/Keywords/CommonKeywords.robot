*** Settings ***
Library     SeleniumLibrary
Library     robot.libraries.DateTime
Library     Collections
Library     DatabaseLibrary
Library     OperatingSystem
Library     BuiltIn
Library     String


*** Variables ***

#${zelinum_URL}
#${Test_Environment}

${BROWSER} =  chrome
${waitingtime}    60s
${Next_path}      التالي
${Promize_URL} =  https://www.saucedemo.com/v1/






*** Keywords ***

Start_Test
    open browser  ${Promize_URL}   ${BROWSER}
    maximize browser window
    set selenium speed    0.3

Waiting
   Wait For Condition       return window.document.readyState === "complete"
   wait until element is not visible    xpath=/html/body/app-root/app-loading/main/th-spinner/div/div    ${waitingTime}

WaitingElement
   Wait For Condition       return window.document.readyState === "complete"
   wait until element is not visible    xpath=/html/body/app-root/app-loading/main/th-spinner/div/div    80s




Generate Random CO_Name
    ${InvoiceNumber}     generate random string          5  [Characters]
    SET TEST VARIABLE      ${InvoiceNumber}


End Test
    close browser

Scroll_To_END
    execute javascript      window.scrollTo(0,document.body.scrollHeight);
    #sleep   2s
Scroll_Down_with_Argument
    [Arguments]     ${XPathField}
    execute javascript   window.document.evaluate("${XPathField}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView({behavior: "auto", block: "center", inline: "center"});

Scroll_Middle_Page
    execute javascript      window.scrollTo(0,700);
    #sleep   2s
Scroll_End_Page
    execute javascript      window.scrollTo(0,3000);

Scroll_TO_600
    execute javascript      window.scrollTo(0,600);

Next_Button
    [Documentation]  press on next button and it is general button
    sleep  3s
    wait until page contains          التالي          30
    wait until element is enabled     التالي          30
    click button          التالي


Confirm Step Number
    [Arguments]  ${StepNumber}
    wait until page contains    ${StepNumber}    ${waitingtime}

Popup
    wait until element is visible     myModalLabel      ${waitingTime}
    execute javascript       $(".btn.btn-primary.okButton").click();

Hide_Calendar
    execute javascript      $(".calendars-popup").hide();




End Test on server
    run keyword if test failed          Add Cookie is falied
    run keyword if test passed          Add Cookie is passed
    Close Browser


Add Cookie is falied
    add cookie          zaleniumTestPassed          false

Add Cookie is passed
    add cookie          zaleniumTestPassed          true


Create phone number
    ${randomNumber}     generate random string          8    [NUMBERS]
    ${phone_number}       Catenate    05${randomNumber}
    set global variable     ${phone_number}

GenerateRandom_Phone
    ${randomNumber}     generate random string          8    [NUMBERS]
    ${Mobile_number}      Catenate      009665${randomNumber}
    SET TEST VARIABLE    ${Mobile_number}


GenerateRandom_ID
    ${randomNumber}     generate random string          2    [NUMBERS]
    ${Mobile_number}      Catenate      ${randomNumber}
    SET TEST VARIABLE    ${Mobile_number}

GenerateRandom_Email
    ${randomNumber}     generate random string          3    [NUMBERS]
    ${Email_Random}      Catenate      Karim${randomNumber}@gmail.com
    SET TEST VARIABLE    ${Email_Random}

Generate_CRNumber
    ${CRNumber}     generate random string          10  [NUMBERS]
    SET TEST VARIABLE      ${CRNumber}

Generate_Shiptmentpolicy_Number
    ${CertificateNumber}     generate random string          5  [NUMBERS]
    SET TEST VARIABLE      ${CertificateNumber}
Generate_RequestNumber
    ${Request_Number}     generate random string      5  [NUMBERS]
    SET TEST VARIABLE     ${Request_Number}

Generate_CertificateNumber
    ${CertificateRNumber}     generate random string          10  [NUMBERS]
    SET TEST VARIABLE     ${CertificateRNumber}

Enter Email_address_AddingCo_ByImporter
     ${randomNumber}   generate random string     3 [NUMBERS]
     ${Email_Address}         Catenate           karim${randomNumber}@hotmail.com
     set global variable           ${Email_Address}

Enter mobile number_Random
      ${randomNumber}           generate random string   8 [NUMBERS]
      ${Random_phone_number}        Catenate   009665${randomNumber}
      ${Random_phone_number2}   convert to integer  ${Random_phone_number}
      set global variable         ${Random_phone_number2}

Scroll_To_END
    execute javascript      window.scrollTo(0,document.body.scrollHeight);
    #sleep   2s
Scroll_Down_with_Argument
    [Arguments]     ${XPathField}
    execute javascript   window.document.evaluate("${XPathField}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView({behavior: "auto", block: "center", inline: "center"});

Scroll_Middle_Page
    execute javascript      window.scrollTo(0,700);
    #sleep   2s
Scroll_End_Page
    execute javascript      window.scrollTo(0,3000);

Scroll_TO_600
    execute javascript      window.scrollTo(0,600);