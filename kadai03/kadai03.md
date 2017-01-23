#課題3レポート

閾値処理

閾値を4パターン設定し，閾値処理した画像を出力する．
原画像を「kadai03.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

まず原画像の入力，カラー画像を白黒濃淡画像に変換する処理を行う．
次の通りである．

ORG=imread('Lenna.png'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

結果を図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai03/kadai3_1.png?raw=true)
図1 白黒濃淡画像に変換した原画像


図1に示した画像から輝度値による閾値を4パターン設定し，出力する．
閾値処理は次の通りである．

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

IMG = ORG > 192; % 輝度値が192以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

それぞれの結果を図2～図5に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai03/kadai3_2.png?raw=true)
図2 輝度値が64以上の画素を1，その他を0に変換した時の画像

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai03/kadai3_3.png?raw=true)
図3 輝度値が96以上の画素を1，その他を0に変換した時の画像

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai03/kadai3_4.png?raw=true)
図4 輝度値が128以上の画素を1，その他を0に変換した時の画像

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai03/kadai3_5.png?raw=true)
図5 輝度値が192以上の画素を1，その他を0に変換した時の画像
