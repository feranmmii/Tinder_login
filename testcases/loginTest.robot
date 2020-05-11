*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../resources/tinder_resource.robot


Suite Setup  Start test
Suite Teardown  End test

*** Test Cases ***
TC01_Verification_of_Modal
    [Tags]  element_verification
    Get started modal should be visible
    Hide get started modal
    Get started modal should be hidden

TC02_Logo_check
    [Tags]  Logo
    Logo should be present

TC03_Login_with_Google
    Login to tinder
    Get started modal should be visible
    Login with google
