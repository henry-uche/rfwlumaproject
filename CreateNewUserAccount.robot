*** Settings ***
Documentation    tests verifying new account creation
Library          SeleniumLibrary
Resource         lumaproject_keywords.robot
Resource         lumaproject_variables.robot




*** Test Cases ***
Verify new users can create account
   [Tags]  ready
   Navigate to create account page
   Enter firstname for new user
   Enter lastname for new user
   Enter email for new user
   Enter new user password create account and assert account creation


Verify user can modify address book
  [Tags]  Modify
  Precondition for login
  Login with valid credentials and assert successful login    bobby7762@gmail.com  BXBXZK679ssrr  Bobby Flash
  Modify users address and save
  [Teardown]  logout users and assert successful logout

Verify That User Can Change Password
  [Tags]  Newpaswrd
  [Setup]  Precondition for login
  Login with valid credentials and assert successful login   bobby7762@gmail.com  BXBXZK679ssrr  Bobby Flash
  Navigate To User Account
  Change User Password                                         BXBXZK679ssrr  TEXT123textzz  TEXT123textzz
  Login with valid credentials and assert successful login     bobby7762@gmail.com  TEXT123textzz  Bobby Flash
  [Teardown]  Change User Password                           TEXT123textzz   BXBXZK679ssrr  BXBXZK679ssrr






