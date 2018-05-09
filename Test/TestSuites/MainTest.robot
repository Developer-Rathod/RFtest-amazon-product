*** Settings ***
Library           Selenium2Library
Resource          ../Keywords/keywords.robot
Resource        ../Commons/commons.robot
Suite Setup  Open Web Page
Suite Teardown  Log  Done
#Close The Browser


*** Test Cases ***
Search For Word
        Go To The Search Box
Product selection
        Select Product From List
        Send Product To Cart
Signin For Checkout
        Begin Signin For Checkout


