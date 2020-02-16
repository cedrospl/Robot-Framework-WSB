*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${B-login}   testerwsb_t1
${B-pass}   adam1234

*** Keywords ***
${Browser-url} setup
	Log to console  Wchodze na strone https://profil.wp.pl/login.html?zaloguj=poczta
	Open Browser   https://profil.wp.pl/login.html?zaloguj=poczta   Firefox

${Browser-url} teardown
	Log to console  Wychodze ze strony https://profil.wp.pl/login.html?zaloguj=poczta
	Close All Browsers

credentials
	Log to console  wyslalem dobre cred
	[Return]  ${B-login}  ${B-pass}

bad credentials
	Log to console  wyslalem zle cred
	[Return]  baduser  badpass

logged
	Log to console  szukaj Odebrane
	[Return]  Odebrane

Enter Credentials
	[Arguments]  ${user}  ${pass}
	Log to console  uzylem cred ${user} ${pass}
    Input Text   id:login   ${user}   clear=True
    Input Text   id:password   ${pass}   clear=True
    Click Button   id:btnSubmit

webpage check
	[Arguments]  ${slowo}
	Log to console  szukalem slowa ${slowo}
	${result}=   Run Keyword and return status   Page Should Contain   ${slowo}
	${result}=   set variable if   ${result}   OK   NOTOK
	[Return]  ${result}