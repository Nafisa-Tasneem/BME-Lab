%Histogram:

 w=imread('fracture.jpg');

subplot(221),imshow(w),title('original image'),
subplot(222),imhist(w),title('histogram'),axis tight

p=imread('fracture.jpg');
 ph=histeq(p);
subplot(223), imshow(ph),title('histogram equalized image'),
subplot(224),imhist(ph),title('histogram equalization'),axis tight

