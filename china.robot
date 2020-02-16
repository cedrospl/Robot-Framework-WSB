*** Settings ***
Resource  NSM.robot
Metadata  Author  Adam Przybyla

*** Test Cases ***
测试1
	现在是这样的：我看到 webpage
	我在 webpage 上看不到 logged 单词
	然后我在 webpage 上使用 credentials 单词
	因此我在 webpage上看到 logged 单词
	在此之后，我不再看到 webpage

测试2
	现在是这样的：我看到 webpage
	我在 webpage 上看不到 logged 单词
	然后我在 webpage 上使用 bad credentials 单词
	因此我在 webpage 上看不到 logged 单词
	在此之后，我不再看到 webpage  

测试3
	现在是这样的：我看到 webpage
	我在 webpage 上看不到 logged 单词
	在此之后，我不再看到 webpage
