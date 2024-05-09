
clc
clear all
close all
i=imread('noise.png');
sp=imnoise(i,'salt & pepper',0.1);
m(:,:,1)=medfilt2(i(:,:,1));
m(:,:,2)=medfilt2(i(:,:,2));
m(:,:,3)=medfilt2(i(:,:,3));
subplot(1,3,1), imshow(i),title('original image')
%subplot(1,3,2),imshow(sp),title('Noisy image')
subplot(1,3,3),imshow(m),title('Median filtered image')

