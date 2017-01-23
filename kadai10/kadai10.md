#課題10レポート

画像のエッジ抽出

画像のエッジ抽出を行う．
原画像は「kadai10.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

原画像を白黒濃淡画像へ変換する．
図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai10/kadai10_1.png?raw=true)
図1 白黒濃淡画像へ変換された原画像

エッジ抽出を行う．
プレウィット法，ソベル法，キャニー法それぞれに対しプログラムと実行結果を示す．

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai10/kadai10_2.png?raw=true)
図2 プレウィット法

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai10/kadai10_3.png?raw=true)
図3 ソベル法

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai10/kadai10_4.png?raw=true)
図4 キャニー法
