%Filter:

 fspecial('average',[5,7])
 c=imread('cameraman.tif');
f1=fspecial('average');
 cf1=filter2(f1,c);
subplot(211)
imshow(c)
title('original image')

subplot(212),imshow(cf1/255)
title('filtered image')
