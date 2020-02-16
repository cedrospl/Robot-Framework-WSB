*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla  <adam.przybyla@gmail.com>

*** Test Cases ***
テスト 1
	次のようになります。webpage を見る
	webpage は logged という単語を表示しません
	次に、 webpage で credentials という言葉を使用します
	このため： webpage に logged という言葉が表示されます
	この後もう webpage が見えない
テスト 2
	次のようになります。webpage を見る
	webpage は logged という単語を表示しません
	次に、 webpage で bad credentials という言葉を使用します
	このため： webpage は logged という単語を表示しません
	この後もう webpage が見えない
テスト 3
	次のようになります。webpage を見る
	webpage は logged という単語を表示しません
	この後もう webpage が見えない
