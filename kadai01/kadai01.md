#課題1レポート
「kadai01.jpg」を原画像とする．この画像は縦1066画素，横1600画素によるディジタルカラー画像である．

ORG=imread('kadai01.jpg'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai01/kadai1_1.png?raw=true)  
図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図２に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai01/kadai1_2.png?raw=true)  
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,4,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai01/kadai1_3.png?raw=true)  
図3 1/4サンプリング

1/8から1/32サンプリングは，

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,8,'box'); % 画像の拡大

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai01/kadai1_4.png?raw=true)  
図4 1/8サンプリング

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,16,'box'); % 画像の拡大

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai01/kadai1_5.png?raw=true)  
図5 1/16サンプリング

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,32,'box'); % 画像の拡大

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai01/kadai1_6.png?raw=true)  
図6 1/32サンプリング

である．
このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
