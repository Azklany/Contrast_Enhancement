% Description: EE409 Mini Project
% Download the 'im1.jpg' to your current folder
pkg load image
input=imread('im1.jpg');
input=rgb2gray(input);
input=im2double(input);
a=0.17;
y_a=0.78;

parameter_1=(y_a)/(a);
parameter_2=(1-y_a)/(1-a);

for i=1:size(input,1)
    for j=1:size(input,2)
      if input(i,j)<a
         resultt(i,j)=parameter_1*input(i,j);
     elseif input(i,j)>=a && input(i,j)<1
         resultt(i,j)=parameter_2*(input(i,j)-a)+y_a;
      end
  end
end

subplot(2,2,1)
imshow(input)
title('Grayscale Image','fontsize', [12])
subplot(2,2,2)
imhist(input)
title('Histogram of grayscale image ','fontsize', [12])
subplot(2,2,3)
imshow(resultt)
title('Piecewise Linear Transformation','fontsize', [12])
subplot(2,2,4)
imhist(resultt)
title('Histogram of Piecewise Linear Transformation] ','fontsize', [12])


