%Noise Analysis:
% ref = imread('Vrain_tumor MRI.jpg');
% A = imnoise(ref,'salt & pepper', 0.02);

tw=imread('Vrain_tumor MRI.jpg');

%salt and pepper noise
tn=imnoise(tw,'salt & pepper');
figure()
subplot(231)
imshow(tn)
title('image with salt and pepper noise')

subplot(232)
tr=medfilt2(tn);
imshow(tr)
title('noise remove with median filter')

fspecial('average',[5,7])
f1=fspecial('average');
cf1=filter2(f1,tn);
subplot(233),imshow(cf1/255)
title(' sp remove with average filter')

%gaussian noise
tg=imnoise(tw,'gaussian');
subplot(234)
imshow(tg)
title('image with gaussian noise')

subplot(235)
tr=medfilt2(tg);
imshow(tr)
title('noise remove with median filter')

fspecial('average',[5,7])
f1=fspecial('average');
cf1=filter2(f1,tg);
subplot(236),imshow(cf1/255)
title(' noise remove with average filter')

%speckle noise
tgs=imnoise(tw,'speckle');
figure()
subplot(231)
imshow(tgs)
title('image speckle noise')

subplot(232)
tr=medfilt2(tgs);
imshow(tr)
title('noise remove with median filter')

fspecial('average',[5,7])
f1=fspecial('average');
cf1=filter2(f1,tgs);
subplot(233),imshow(cf1/255)
title(' noise remove with average filter')



