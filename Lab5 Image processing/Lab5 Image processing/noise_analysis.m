%Noise Analysis:
% ref = imread('Vrain_tumor MRI.jpg');
% A = imnoise(ref,'salt & pepper', 0.02);

tw=imread('Vrain_tumor MRI.jpg');
tn=imnoise(tw,'salt & pepper');
subplot(321)
imshow(tn)
title('image with salt and pepper noise')

subplot(322)
tr=medfilt2(tn);
imshow(tr)
title('noise remove with median filter')

tg=imnoise(tw,'gaussian');
subplot(323)
imshow(tg)
title('image with gaussian noise')

tgs=imnoise(tw,'speckle');
subplot(324)
imshow(tgs)
title('image speckle noise')

fspecial('average',[5,7])
f1=fspecial('average');
 cf1=filter2(f1,tn);
subplot(325),imshow(cf1/255)
title(' sp remove with average filter')
