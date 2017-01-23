#課題8レポート

ラベリング
二値化された画像の連結成分にラベルをつける．
なお原画像は「kadai08.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

まず原画像を白黒濃淡画像に変換する．
結果を図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai08/kadai8_1.png?raw=true)
図1 白黒濃淡画像へ変換した原画像

閾値128で二値化を行った画像を図2に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai08/kadai8_2.png?raw=true)
図2 閾値128で二値化した画像

次に二値化された画像の連結成分にラベルをつける．
プログラムを下に示す．

IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像の表示

実行結果を図3に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai08/kadai8_3.png?raw=true)
図3 ラベリング
