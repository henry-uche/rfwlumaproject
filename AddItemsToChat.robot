*** Settings ***
Documentation    test verify adding and removing items from chat
Library          SeleniumLibrary
Resource         lumaproject_keywords.robot
Resource         lumaproject_variables.robot

*** Test Cases ***
Verify user can search and add items from cart
  Precondition for login
  Login with valid credentials and assert successful login    bobby7762@gmail.com  BXBXZK679ssrr  Bobby Flash
  Search And Add Item To Cart

