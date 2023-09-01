*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Test Cases ***
Navigate to home page
  Open Browser  https://magento.softwaretestingboard.com/   chrome
  Wait Until Element Is Enabled    xpath:/html/body/div[2]/header/div[1]/div/ul/li[2]/a
  Click Element    xpath:/html/body/div[2]/header/div[1]/div/ul/li[2]/a
  Wait Until Element Is Enabled   id:email
  Input Text    id:email    bobby7762@gmail.com
  Input Text    id:pass    BXBXZK679ssrr
  Click Element    id:send2


*** Keywords ***

