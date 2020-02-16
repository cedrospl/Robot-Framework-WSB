*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla  <adam.przybyla@gmail.com>

*** Test Cases ***
Test 1
	Teď je to takto: Vidím webpage
	Na webpage nevidím slova logged
	pak používám slova credentials na webpage
	z tohoto důvodu: Na webpage vidím slova logged
	po tom už nevidím webpage

Test 2
	Teď je to takto: Vidím webpage
	Na webpage nevidím slova logged
	pak používám slova bad credentials na webpage
	z tohoto důvodu: Na webpage nevidím slova logged
	po tom už nevidím webpage

Test 3
	Teď je to takto: Vidím webpage
	Na webpage nevidím slova logged
	po tom už nevidím webpage
