#課題4レポート

画像のヒストグラム

画素の濃度ヒストグラムを生成する．
なお原画像は「kadai04.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

まず原画像を白黒濃淡画像に変換し，出力する．
次のように行う．

ORG=imread('kadai04.png'); % 原画像の入力  
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar;

結果を図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai04/kadai4_1.png?raw=true)  
図1 白黒濃淡画像に変換した原画像

次にヒストグラムを表示する．
次のように行う．

imhist(ORG); % ヒストグラムの表示

結果を図2に示す．

![濃度ヒストグラム](https://github.com/ogata3/lecture_image_processing/blob/master/kadai04/kadai4_2.png?raw=true)  
図2 画素の濃度ヒストグラム
