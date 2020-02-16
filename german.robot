*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla  <adam.przybyla@gmail.com>

*** Test Cases ***
Test 1
	Es ist jetzt so: Ich sehe die webpage
	Ich sehe keine wörter logged auf der webpage
	dann benutze ich die worte credentials auf der webpage
	Aus diesem Grund: sehe ich wörter logged auf der webpage
	Danach sehe ich die webpage nicht mehr
Test 2
	Es ist jetzt so: Ich sehe die webpage
	Ich sehe keine wörter logged auf der webpage
	dann benutze ich die worte bad credentials auf der webpage
	Aus diesem Grund: Ich sehe keine wörter logged auf der webpage
	Danach sehe ich die webpage nicht mehr
Test 3
	Es ist jetzt so: Ich sehe die webpage
	Ich sehe keine wörter logged auf der webpage
	Danach sehe ich die webpage nicht mehr
