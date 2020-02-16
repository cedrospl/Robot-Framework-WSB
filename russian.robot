*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla  <adam.przybyla@gmail.com>

*** Test Cases ***
Тест 1
	Теперь это так: я вижу webpage
	Я не вижу слов logged на webpage
	тогда я использую слова credentials на webpage
	из-за этого я вижу слова logged на webpage
	после этого я больше не вижу webpage
Тест 2
	Теперь это так: я вижу webpage
	Я не вижу слов logged на webpage
	тогда я использую слова bad credentials на webpage
	из-за этого Я не вижу слов logged на webpage
	после этого я больше не вижу webpage
Тест 3
	Теперь это так: я вижу webpage
	Я не вижу слов logged на webpage
	после этого я больше не вижу webpage
