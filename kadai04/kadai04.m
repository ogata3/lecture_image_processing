clear; % �ϐ��̃I�[���N���A

ORG=imread('kadai04.png'); % ���摜�̓���
ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
imagesc(ORG); colormap(gray); colorbar;
pause;

imhist(ORG); % �q�X�g�O�����̕\��