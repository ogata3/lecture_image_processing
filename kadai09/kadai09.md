#課題9レポート

メディアンフィルタと先鋭化

メディアンフィルターを適用し，ノイズ除去を行う．
なお原画像は「kadai09.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

原画像を白黒濃淡画像へ変換する．
図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai09/kadai9_1.png?raw=true)  
図1 白黒濃淡画像へ変換された原画像

次にノイズを添付する．
下にプログラムを下に示す．

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付

ノイズを添付した画像が図2である．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai09/kadai9_2.png?raw=true)  
図2 ノイズを添付した画像

始めに平滑化フィルタによるノイズ除去を行う．
プログラムは下記の通りである．

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去

実行結果を図3に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai09/kadai9_3.png?raw=true)  
図3 平滑化フィルタによるノイズ除去

メディアンフィルタによるノイズ除去を示す．
プログラムは下記の通りである．

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去

実行結果を図4に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai09/kadai9_4.png?raw=true)  
図4 メディアンフィルタによるノイズ除去

フィルタを用いることで画像の鮮鋭化を行う．
プログラムは下記の通りである．

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用

実行結果を図5に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai09/kadai9_5.png?raw=true)  
図5 画像の鮮鋭化
