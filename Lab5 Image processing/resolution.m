x=imread('Brain.jpg');

subplot(331)
imshow(x)
title('original image');

subplot(332)
x1=imresize(imresize(x,1/2),2); 
imshow(x1)
title('resize 1/2');

subplot(333)
xn=imresize(imresize(x,1/4),4); 
imshow(xn)
title('resize 1/4');

subplot(334)
a=imresize(imresize(x,1/8),8); 
imshow(a)
title('resize 1/8');

subplot(335)
b=imresize(imresize(x,1/16),16); 
imshow(b)
title('resize 1/16');

subplot(336)
c=imresize(imresize(x,1/32),32);
imshow(c)
title('resize 1/32');

subplot(337)
d=imresize(imresize(x,1/64),64);
imshow(d)
title('resize 1/64');
