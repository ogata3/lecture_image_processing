#課題6レポート

画像の二値化
輝度値128による二値化とディザ法による二値化を比較する．
なお原画像は「kadai06.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

白黒濃淡画像に変換した原画像を図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai06/kadai6_1.png?raw=true)
図1 白黒濃淡画像に変換した原画像

輝度値128による二値化を行った原画像を図2に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai06/kadai6_2.png?raw=true)
図2 輝度値128による二値化を行った原画像

ディザ法とは，原画像の各画素の濃度値を，画素位置によりあらかじめ定められたディザマトリクスTの値(閾値)と比較し，その
大小関係で出力画素の濃度値を決定する方法である．

プログラムを下に示す．

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

実行結果を図3に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai06/kadai6_3.png?raw=true)
図3 ディザ法による二値化を行った原画像
