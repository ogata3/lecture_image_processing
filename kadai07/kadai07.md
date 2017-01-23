#課題7レポート

ダイナミックレンジの拡大
画素のダイナミックレンジを０から２５５にする．
なお原画像は「kadai07.png」とする．この画像は縦1066画素，横1600画素のディジタルカラー画像である．

まず原画像を白黒濃淡画像へ変換する．
ダイナミックレンジ拡大前の画像とその濃度ヒストグラムを図1,2に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai07/kadai7_1.png?raw=true)
図1 ダイナミックレンジの拡大前の画像

![濃度ヒストグラム](https://github.com/ogata3/lecture_image_processing/blob/master/kadai07/kadai7_2.png?raw=true)
図2 ダイナミックレンジ拡大前の濃度ヒストグラム

次に，ダイナミックレンジの拡大を行う．
プログラムを下に示す．

ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
ORG = uint8(ORG); % この行について考察する
imhist(ORG); % 濃度ヒストグラムを生成、表示

実行結果を図3,4に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai07/kadai7_3.png?raw=true)
図3 ダイナミックレンジの拡大後の画像

![濃度ヒストグラム](https://github.com/ogata3/lecture_image_processing/blob/master/kadai07/kadai7_4.png?raw=true)
図4 ダイナミックレンジ拡大後の濃度ヒストグラム

ORG = uint8(ORG);について
元々画素の濃淡は8ビットの整数によって定義されているが，計算による誤差を小さくするために
浮動小数点数への変換を行っているので，濃度ヒストグラムを生成前に8ビットの整数へ戻している．
