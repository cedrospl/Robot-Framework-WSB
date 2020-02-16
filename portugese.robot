*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla  <adam.przybyla@gmail.com>

*** Test Cases ***
Teste 1
	É assim agora: eu vejo o webpage
	Não vejo as palavras logged na webpage
	então eu uso as palavras credentials em webpage
	por causa disso: vejo as palavras logged na webpage
	Depois disso, não vejo mais a webpage

Teste 2
	É assim agora: eu vejo o webpage
	Não vejo as palavras logged na webpage
	então eu uso as palavras bad credentials em webpage
	por causa disso: não vejo as palavras logged na webpage
	Depois disso, não vejo mais a webpage

Teste 3
	É assim agora: eu vejo o webpage
	Não vejo as palavras logged na webpage
	Depois disso, não vejo mais a webpage
