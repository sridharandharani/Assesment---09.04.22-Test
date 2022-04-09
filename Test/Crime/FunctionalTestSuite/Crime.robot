*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000

*** Test Cases ***
1:Guest User Test
    [Documentation]  This test is for guest
    [Tags]  user
    Open Browser    ${web_url}   chrome
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[5]/td[2]/a
    sleep  1s
    Test 1 Description
    sleep  1s
    Test 1 Remarks
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close Browser

2:User Register Test
    [Documentation]  This test is to register user
    [Tags]  user
    Open Browser    ${web_url}   chrome
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[6]/td[2]/a
    sleep  1s
    Test 2 Name
    Test 2 Address
    Test 2 email
    Test 2 phone
    Test 2 pass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s
    close Browser

3:Registered User Login Test
    [Documentation]  This test is to login user
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test 2 email
    Test 2 pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    close Browser

4:User Report Crime Test
    [Documentation]  This test is to report crime
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test 2 email
    Test 2 pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[1]/a
    Test 1 Description
    Test 1 Remarks
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close Browser

5:User Modify Test
    [Documentation]  This test is for modification
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test 5 email
    Test 5 pass
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[2]/a
    Test 5 newName
    click Button  xpath=//html/body/div[3]/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    Test 5 Newaddress
    Test 5 Newemail
    Test 5 newphone
    Test 5 newpass
    close Browser
6:User Logout
    [Documentation]  This test is to logout
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test 2 email
    Test 2 pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    close Browser

7:Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test 7 admname
    Test 7 Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

8:Admin View Report Test
    [Documentation]  This test is to view report
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test 7 admname
    Test 7 Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[1]/a
    close Browser

9:Admin Search Report Test
    [Documentation]  This test is to search report
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test 7 admname
    Test 7 Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[2]/a
    sleep  1s
    Test 9 Date
    sleep  1s
    click Button  xpath=//html/body/div[3]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    close Browser

10:Admin Logout
    [Documentation]  This test to logout admin
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test 7 admname
    Test 7 Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    close Browser














*** Keywords ***
Test 1 Description
    Input Text  name:descrip  robbery

Test 1 Remarks
    Input Text  name:remark  chain

Test 2 Name
    Input Text  name:username  Gokul

Test 2 Address
    Input Text  name:address  chennai

Test 2 email
    Input Text  name:useremail   gokul@gmail.com

Test 2 phone
    Input Text  name:userphone  12345678

Test 2 pass
    Input Text  name:userpass  1234

Test 5 email
    Input Text  name:useremail  dharansri916@gmail.com

Test 5 pass
    Input Text  name:userpass  1234

Test 5 newName
    Input Text  name:newname  sridharan

Test 5 Newaddress
    Input Text  name:newaddress  chennai

Test 5 Newemail
    Input Text  name:newemail  xyz@gmail.com

Test 5 newphone
    Input Text  name:newphone  12345678

Test 5 newpass
    Input Text  name:newpass  1234

Test 7 admname
    Input Text  name:admname  admin

Test 7 Admpass
    Input Text  name:admpass  12345

Test 9 Date
    Input Text  name:date  09-04-2022



