#課題5レポート

判別分析法

判別分析法を用いて画像二値化を行う．
なお原画像は「kadai05.png」とする．この画像は縦585画素，横787画素のディジタルカラー画像である．

まず原画像を白黒濃淡画像に変換する．
結果を図1に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai05/kadai5_1.png?raw=true)  
図1 白黒濃淡画像に変換した原画像

判別分析法とは，対象物の濃度と，背景の濃度とがそれぞれ最も良くまとまり，かつ対象物と背景との違い
が際立つように閾値を定める方法である．
具体的には，閾値tで画像を2つのクラスに分けたとき，その2つのクラス間分散の各クラス内分散に対する比の値が
最も大きくなるように閾値tを定める．

次のように行う．

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納  
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;  
for i=1:255  
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける  
C2 = H(i+1:256);  
n1 = sum(C1); %画素数の算出  
n2 = sum(C2);  
myu1 = mean(C1); %平均値の算出  
myu2 = mean(C2);  
sigma1 = var(C1); %分散の算出  
sigma2 = var(C2);  
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出  
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出  
if max_val<sigma_B/sigma_w  
max_val = sigma_B/sigma_w;  
max_thres =i;  
end;  
end;  

IMG = ORG > max_thres;  
imagesc(IMG); colormap(gray); colorbar;

結果を図2に示す．

![原画像](https://github.com/ogata3/lecture_image_processing/blob/master/kadai05/kadai5_2.png?raw=true)  
図2 判別分析法を用いた画像2値化
