*** Settings ***
Documentation    login related test cases
Library          SeleniumLibrary
Resource         lumaproject_keywords.robot
Resource         lumaproject_variables.robot







*** Test Cases ***
Navigate to luma Home page and verify valid login
     [Tags]   DEBUG
     [Setup]   Precondition for login
     Login with valid credentials and assert successful login  ${VALID_LOGINEMAIL2}   ${VALID_PASSWORD2}  ${LOGGEDIN_USERNAME2}
     [Teardown]  logout users and assert successful logout



Verify tha invalid credentials should not login successfully
    [Tags]  henry
    [Template]  users with invalid credentilas should receive the correct error message
    ${INVALID_USERNAME4}      ${VALID_PASSWORD}          ${LOGGEDIN_USERNAME}
    ${VALID_LOGINEMAIL}       ${INVALID_PASSWORD4}       ${LOGGEDIN_USERNAME}
    ${INVALID_USERNAME4}      ${INVALID_PASSWORD4}       ${LOGGEDIN_USERNAME}
    ${EMPTY}                     ${EMPTY}                ${LOGGEDIN_USERNAME}



*** Keywords ***
users with invalid credentilas should receive the correct error message
     [Arguments]    ${username}   ${password}    ${loggedInUser}
     Open Browser                     ${URL}   ${BROWSER}
     Maximize Browser Window
     Wait Until Element Is Visible      ${HOMEPAGE_SIGNIN_LINK}
     Click Element                      ${HOMEPAGE_SIGNIN_LINK}
     Input Text                         ${USERNAME_FEILD}   ${username}
     Input Text                         ${PASSWORD_FEILD}     ${password}
     Click Element                      ${LOGIN_BTN}
     Wait Until Page Does Not Contain   ${loggedInUser}

