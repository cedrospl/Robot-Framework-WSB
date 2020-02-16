*** Settings ***
Library   Keywords in python.py
Library   SSHLibrary
Library   SeleniumLibrary
Library   Impansible
Library   Collections

*** Variables ***
${MESSAGE}   Hello, world!
${REMOTEHOST}   localhost
${REMOTEUSERNAME}   tester
${REMOTEPASSWORD}   tester
${Browser-url}   https://profil.wp.pl/login.html?zaloguj=poczta
${B-login}   testerwsb_t1
${B-pass}   adam1234
${Browser}   HeadlessFirefox
${Ansible_password}   tester

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

Browser test 01
    Open url poczta.wp.pl

    Input login and password

    Logging in to e-mail

    Check for new messages

    Logout from e-mail

    Close browser

Module test - self Ubuntu check
    ${localhostCheck}=   Setup   localhost
    ${ansible_facts}=   Get From Dictionary   ${localhostCheck}   ansible_facts
    ${ansible_distribution}=   Get From Dictionary   ${ansible_facts}   ansible_distribution
    Log to console   ${ansible_distribution}
    BuiltIn.Should Be Equal   ${ansible distribution}   Ubuntu

Module test - number of cores
    Connection to localhost

    Logging in to localhost

    SSH test for number of cores and assertion via localhost

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

Open url poczta.wp.pl
    Open Browser   ${Browser-url}   ${Browser}

Input login and password
    Input Text   id:login   ${B-login}   clear=True
    Input Text   id:password   ${B-pass}   clear=True

Logging in to e-mail
    Click Button   id:btnSubmit

Check for new messages
    Sleep   10s
    Page Should Contain   Odebrane

Logout from e-mail
    Click Button   id:Logout-Button

Close browser
    Close All Browsers

SSH test for number of cores and assertion via localhost
    Log to console   
    ${numberOfCores}   Execute command  grep -c ^processor /proc/cpuinfo
    Log to console   ${numberOfCores}
    BuiltIn.Should be Equal    ${numberOfCores}   2

