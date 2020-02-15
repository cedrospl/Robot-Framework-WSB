*** Variables ***
${MESSAGE}   Hello, world!

*** Test Cases ***
My first test in robot
    Log to console   Hello, world!

My second test in robot
    Log to console   ${MESSAGE}

My third test in robot
    Print out   ${MESSAGE}

*** Keywords ***
Print out
    [Arguments]   ${print}
    Log to console   ${print}
