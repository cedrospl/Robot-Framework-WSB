*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla  <adam.przybyla@gmail.com>

*** Test Cases ***
Test 1
	C'est comme ça maintenant: je vois le webpage
	Je ne vois pas les mots logged sur le webpage
	alors j'utilise les mots credentials sur webpage
	à cause de cela: je vois les mots logged sur le webpage
	après cela je ne vois plus le webpage

Test 2
	C'est comme ça maintenant: je vois le webpage
	Je ne vois pas les mots logged sur le webpage
	alors j'utilise les mots bad credentials sur webpage
	à cause de cela: je ne vois pas les mots logged sur le webpage
	après cela je ne vois plus le webpage

Test 3
	C'est comme ça maintenant: je vois le webpage
	Je ne vois pas les mots logged sur le webpage
	après cela je ne vois plus le webpage
