*** Settings ***
Library   Keywords in python.py
Library   SSHLibrary

*** Variables ***
${MESSAGE}   Hello, world!
${REMOTEHOST}   localhost
${REMOTEUSERNAME}   tester
${REMOTEPASSWORD}   tester

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

SSH test after connection to localhost
    Connection to localhost

    Logging in to localhost

    SSH test and assertion via localhost

    Closing connection with localhost



*** Keywords ***
Print out
    [Arguments]   ${print}
    Log to console   ${print}

Connection to localhost
    Open Connection   ${REMOTEHOST}

Logging in to localhost
    Login   ${REMOTEUSERNAME}   ${REMOTEPASSWORD}

SSH test and assertion via localhost
    ${check}   Execute command   uname -a
    BuiltIn.Should Contain   ${check}   Linux

Closing connection with localhost
    Close All Connections
