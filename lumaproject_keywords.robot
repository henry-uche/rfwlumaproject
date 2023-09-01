*** Settings ***
Documentation    luma project related keywords
Library   SeleniumLibrary
Resource  lumaproject_variables.robot
Library  FakerLibrary


*** Keywords ***

Precondition for login
     Open Browser                       ${URL}   ${BROWSER}
     Maximize Browser Window
     Wait And Click Element             ${HOMEPAGE_SIGNIN_LINK}

Login with valid credentials and assert successful login
   [Arguments]     ${usernamee}   ${passwordd}    ${loggedInUserr}
     Wait And Input Text In The Text Field     ${USERNAME_FEILD}    ${VALID_LOGINEMAIL2}
     Wait And Input Text In The Text Field     ${PASSWORD_FEILD}    ${VALID_PASSWORD2}
     Wait And Click Element                    ${LOGIN_BTN}
     Wait Until Page Contains                                       ${LOGGEDIN_USERNAME2}



Navigate to create account page
     Open Browser                       ${URL}   ${BROWSER}
     Maximize Browser Window
     Wait And Click Element             ${CREATEACC_LINK}


Create new user account with the required data
    Wait And Input Text In The Text Field     ${FIRSTNAME_FIELD}    Heleyn
    Wait And Input Text In The Text Field     ${LASTNAME_FIELD}     Raphylno
    Wait And Input Text In The Text Field     ${EMAILADDR_NEWACT}   heleynraph34@gmail.com
    Wait And Input Text In The Text Field     ${CREATE_PASSWORD}    text123TEXT4T
    Wait And Input Text In The Text Field     ${CONFIRM_PASSWORD}   text123TEXT4T
    Wait And Click Element                    ${CREATENEWACC_LINK}
    Wait Until Page Contains                  Heleyn  Raphylno     10s

Enter firstname for new user
  ${firstname}=  FakerLibrary.firstname
  Log                                    ${firstname}
  Set Test Variable                      ${firstname}
  Wait And Input Text In The Text Field  ${FIRSTNAME_FIELD}    ${firstname}

Enter lastname for new user
  ${lastname}=  FakerLibrary.lastname
  Log                                    ${lastname}
  Set Test Variable                      ${lastname}
  Wait And Input Text In The Text Field  ${LASTNAME_FIELD}   ${lastname}

Enter email for new user
  ${email}=  FakerLibrary.email
  Log                                    ${email}
  Set Test Variable                      ${email}
  Wait And Input Text In The Text Field  ${EMAILADDR_NEWACT}   ${email}

Enter new user password create account and assert account creation
   Wait And Input Text In The Text Field       ${CREATE_PASSWORD}    text123TEXT5zz
   Wait And Input Text In The Text Field       ${CONFIRM_PASSWORD}   text123TEXT5zz
   Wait And Click Element                      ${CREATENEWACC_LINK}
   Wait Until Page Contains  Thank you for registering with Main Website Store.  10s

Modify users address and save
  Wait And Click Element                    ${USERACC_DROPDOWNLINK}
  Wait And Click Element                    ${MYACCOUNT_LINK}
  Wait And Click Element                    ${ADDRSBOOK_LINK}
  Clear Element Text                        ${TELEPHONE_NUM}
  Wait And Input Text In The Text Field     ${TELEPHONE_NUM}    +4912518697755
  Clear Element Text                        ${STREET_ADDRS}
  Wait And Input Text In The Text Field     ${STREET_ADDRS}     Hermannstraße67
  Select From List By Index                 ${COUNTRY}          84
  Select From List By Label                 ${STATE_PROVINCE}   Bayern
  Wait And Input Text In The Text Field     ${CITY_TOWN}        Regensbug
  Clear Element Text                        ${ZIP_POSTAL CODE}
  Wait And Input Text In The Text Field     ${ZIP_POSTAL CODE}  93047
  Wait And Click Element                    ${SAVE_ADDRESS}

logout users and assert successful logout
   Wait And Click Element                   ${USERACC_DROPDOWNLINK}
   Wait And Click Element                   ${SIGNOUT_USERLINK}
   Wait Until Page Contains         You are signed out  10s

Wait And Click Element
  [Documentation]  wait for element to be enable before clicking
  [Arguments]        ${selector}   ${timeout}=10s
  Wait Until Element Is Enabled    ${selector}
  Click Element                    ${selector}

Wait And Input Text In The Text Field
   [Documentation]  wait for text field to be enable before typing text into the text field
   [Arguments]       ${selector}    ${text}   ${timeout}=10s
   Wait Until Element Is Enabled    ${selector}
   Input Text                       ${selector}    ${text}

Change User Password
   [Arguments]  ${current_pass}  ${newp_ass}  ${confirmnew_pass}
   Click Link    Change Password
   Wait And Input Text In The Text Field   ${CURRENT_PASSWORD}      ${current_pass}
   Wait And Input Text In The Text Field   ${NEW_PASSWORD}          ${newp_ass}
   Wait And Input Text In The Text Field   ${CONFIRM_NEW_PASSWORD}  ${confirmnew_pass}
   Wait And Click Element                  ${SAVE_NEW_PSW}
   #Wait Until Page Contains    You saved the account information

Navigate To User Account
   Wait And Click Element                  ${USERACC_DROPDOWNLINK}
   Wait And Click Element                  ${MYACCOUNT_LINK}

Search And Add Item To Cart
  Wait And Click Element                   ${MENSWEAR_PAGE}
 # Wait And Click Element                   ${SEARCH_ITEMS}
 # Wait And Input Text In The Text Field    ${SEARCH_ITEMS}  Men
  #Select From List By Index    ${SEARCH_ITEMS}  181
  Scroll Element Into View    ${SELECT_PRODUCT}
  Wait And Click Element      ${SELECT_PRODUCT}
  Wait Until Page Contains    Argus All-Weather Tank
  Wait And Click Element      ${ITEM_M_SIZE}
  Wait And Click Element      ${ITEM_COLOR}
  Wait And Input Text In The Text Field  ${ITEM_QUANTITY}   3
  Wait And Click Element     ${ADD_TO_CART}
  Wait Until Page Contains     You added Argus All-Weather Tank to your shopping cart.  10s



