*** Settings ***
Library   Keywords in python.py

*** Variables ***
${MESSAGE}   Hello, world!

*** Test Cases ***
My first test in robot
    Log to console   Hello, world!

My second test in robot
    Log to console   ${MESSAGE}

My third test in robot
    Print out   ${MESSAGE}

My fourth test in robot
    ${Ok_function}=   Ok_return
    Print out   ${Ok_function}
    BuiltIn.Should Be Equal    ${Ok_function}   Ok


*** Keywords ***
Print out
    [Arguments]   ${print}
    Log to console   ${print}
