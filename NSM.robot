*** Settings ***
Resource  mykeywords.robot

*** Keywords ***
# english
It is like this now: ${state}
	Run keyword  ${state}

I not see words ${logged} on the ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

I use the words ${cred} on ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

because of this: ${state}
	Run keyword  ${state}

I see words ${logged} on the ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

after this ${state}
	Run keyword  ${state}

i see the ${page:[^ ]+} ${no more}
	Run keyword  ${page} teardown

i see the ${page:[^ ]+}
	Run keyword  ${page} setup

# polski
Teraz jest tak: ${state}
	Run keyword  ${state}

Ja nie widzę słowa ${logged} na ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

Potem ja użyję słów ${cred} na ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

Z tego powodu ${state}
	Run keyword  ${state}

ja widzę słowa ${logged} na ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

Niedługo potem ${state}
	Run keyword  ${state}

ja nie widzę ${page:[^ ]+}
	Run keyword  ${page} teardown

ja widzę ${page:[^ ]+}
	Run keyword  ${page} setup

# deutsche
Es ist jetzt so: ${state}
	Run keyword  ${state}

Ich sehe keine wörter ${logged} auf der ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

dann benutze ich die worte ${cred} auf der ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

Aus diesem grund: ${state}
	Run keyword  ${state}

sehe ich wörter ${logged} auf der ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

Danach ${state}
	Run keyword  ${state}

sehe ich die ${page:[^ ]+} ${no more}
	Run keyword  ${page} teardown

Ich sehe die ${page:[^ ]+}
	Run keyword  ${page} setup

# russian
Теперь это так: ${state}
	Run keyword  ${state}

Я не вижу слов ${logged} на ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

тогда я использую слова ${cred} на ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

из-за этого ${state}
	Run keyword  ${state}

я вижу слова ${logged} на ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

после этого ${state}
	Run keyword  ${state}

я больше не вижу ${page:[^ ]+}
	Run keyword  ${page} teardown

я вижу ${page:[^ ]+}
	Run keyword  ${page} setup

# czech
Teď je to takto: ${state}
	Run keyword  ${state}

Na ${page} nevidím slova ${logged}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

pak používám slova ${cred} na ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

z tohoto důvodu: ${state}
	Run keyword  ${state}

Na ${page} vidím slova ${logged}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

po tom už ${state}
	Run keyword  ${state}

nevidím ${page}
	Run keyword  ${page} teardown

Vidím ${page}
	Run keyword  ${page} setup

# french
C'est comme ça maintenant: ${state}
	Run keyword  ${state}

Je ne vois pas les mots ${logged} sur le ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

alors j'utilise les mots ${cred} sur ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

à cause de cela: ${state}
	Run keyword  ${state}

je vois les mots ${logged} sur le ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

après cela ${state}
	Run keyword  ${state}

je ne vois plus le ${page}
	Run keyword  ${page} teardown

je vois le ${page}
	Run keyword  ${page} setup

# spanish

Es así ahora: ${state}
	Run keyword  ${state}

No veo palabras ${logged} en el ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

entonces uso las palabras ${cred} en ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

por esto: ${state}
	Run keyword  ${state}

veo palabras ${logged} en ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

después de esto ya ${state}
	Run keyword  ${state}

no veo el ${page}
	Run keyword  ${page} teardown

veo el ${page}
	Run keyword  ${page} setup

# japan

次のようになります。 ${state}
	Run keyword  ${state}

${page:[^ ]+} は ${logged:[^ ]+} という単語を表示しません
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

次に、 ${page} で ${cred} という言葉を使用します
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

このため： ${state}
	Run keyword  ${state}

${page:[^ ]+} に ${logged:[^ ]+} という言葉が表示されます
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

この後 ${state}
	Run keyword  ${state}

この後もう ${page} が見えない
	Run keyword  ${page} teardown

${page:[^ ]+} を見る
	Run keyword  ${page} setup

# china

#It is like this now: ${state}
现在是这样的：${state}
	Run keyword  ${state}

#I not see words ${logged} on the ${page}
我在 ${page} 上看不到 ${logged} 单词
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

#I use the words ${cred} on ${page}
然后我在 ${page} 上使用 ${cred} 单词
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}


#because of this: ${state}
因此${state}
	Run keyword  ${state}

#I see words ${logged} on the ${page}
我在 ${page}上看到 ${logged} 单词
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

#after this ${state}
在此之后，${state}
	Run keyword  ${state}


#i see the ${page:[^ ]+} ${no more}
我${no more:[^ ]+}看到${page}
	Run keyword  ${page} teardown

#i see the ${page:[^ ]+}
我看到 ${page:[^ ]+}
	Run keyword  ${page} setup

# portugese

#It is like this now: ${state}
É assim agora: ${state}
	Run keyword  ${state}

#I not see words ${logged} on the ${page}
Não vejo as palavras ${logged} na ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should not be equal   OK   ${result}

#I use the words ${cred} on ${page}
então eu uso as palavras ${cred} em ${page}
	${user}   ${pass}=   Run Keyword  ${cred}
	Enter Credentials    ${user}  ${pass}

#because of this: ${state}
por causa disso: ${state}
	Run keyword  ${state}

#I see words ${logged} on the ${page}
vejo as palavras ${logged} na ${page}
	${words}=   Run keyword  ${logged}
	${result}=  Run keyword  ${page} check  ${words}
	Should be equal   OK   ${result}

#after this ${state}
Depois disso, ${state}
	Run keyword  ${state}

#i see the ${page:[^ ]+} ${no more}
não vejo mais a ${page}
	Run keyword  ${page} teardown

#i see the ${page:[^ ]+}
eu vejo o ${page}
	Run keyword  ${page} setup
