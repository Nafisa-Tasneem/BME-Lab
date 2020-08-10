%Edge detection:
a=imread('CT-head.jpg');
 subplot(224),imshow(a)
 title('original image');

 edge_p=edge(a,'prewitt');
 subplot(221),imshow(edge_p)
 title('Edge detection with prewitt');
 
 edge_r=edge(a,'roberts');
 subplot(222),imshow(edge_r)
title('Edge detection with roberts');

 edge_s=edge(a,'sobel');
 subplot(223),imshow(edge_s)
 title('Edge detection with sobel');