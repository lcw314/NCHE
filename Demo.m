clc;
clear all;

In=imread('image.png');

%%
[hight,width]=size(In);
nimage=double(In);
L=16384;
blocksize=64;
T=50;
nimage(nimage>L-1)=L-1;
NrX=ceil(hight/blocksize);
NrY=ceil(width/blocksize);
NrBins=256;
r=2;

alpha=0.1;
C=1;

%%

[out,global_out,local_out]=GL_CLAHE(nimage,NrX,NrY,NrBins,L,r,T,alpha,C);
% figure(1);
% imshow(local_out);
% title('local');
figure(2);
imshow(out);
title('proposed');


