//reading the imag
xdel(winsid());
I =imread('D:\standard_test_images\peppers_color.tif');
//converting image into grayscale
I=rgb2gray(I);
//plot the grayscale  image
figure,imshow(I);title("Original image");
I_orig=I;
//addition of noise
I = imnoise(I,'salt & pepper',0.7) ;
figure,imshow(I);title("Noisy(salt&pepper) image");
//
y=psnr(I_orig,I);
disp(y,"psnr of original and salt and pepper noise Image");
//converting image into double and getting size of image
I=double(I);[M,N]=size(I);
//creating copy  for showing median,min,max,mid alpha-trimmed filter
I_med = I; I_max = I,I_min = I;I_mid=I;I_alpha = I;
//median filtering rank 0.5
for x = 2:M-1
    for y= 2:N-1
        //temp is window in flattenend format
       temp= [I(x-1,y-1),I(x-1,y),I(x-1,y+1), I(x,y-1),I(x,y),I(x,y+1), I(x+1,y-1),I(x+1,y),I(x+1,y+1)]
       I_med(x,y)= median(temp)
    end
end   
figure,imshow(uint8(I_med));title("Median filter")
//psnr
y=psnr(I_orig,I_med);
disp(y,"psnr of original and median filtered Image");
//max filtering rank1
for x = 2:M-1
    for y= 2:N-1
       temp= [I(x-1,y-1),I(x-1,y),I(x-1,y+1), I(x,y-1),I(x,y),I(x,y+1), I(x+1,y-1),I(x+1,y),I(x+1,y+1)]
       I_max(x,y)= max(temp)
    end
end   
figure,imshow(uint8(I_max));title("Max filter")

y=psnr(I_orig,I_max);
disp(y,"psnr of original and max filtered Image");

//min filtering rank 0
for x = 2:M-1
    for y= 2:N-1
       temp= [I(x-1,y-1),I(x-1,y),I(x-1,y+1), I(x,y-1),I(x,y),I(x,y+1), I(x+1,y-1),I(x+1,y),I(x+1,y+1)]
       I_min(x,y)= min(temp)
    end
end   
figure,imshow(uint8(I_min));title("Min filter")

y=psnr(I_orig,I_min);
disp(y,"psnr of original and min filtered Image");

//midpoint filtering
for x = 2:M-1
    for y= 2:N-1
       temp= [I(x-1,y-1),I(x-1,y),I(x-1,y+1), I(x,y-1),I(x,y),I(x,y+1), I(x+1,y-1),I(x+1,y),I(x+1,y+1)]
       I_mid(x,y) = 0.5*(max(temp)+min(temp))
    end
end   
figure,imshow(uint8(I_mid));title("Midpoint filter")

y=psnr(I_orig,I_mid);
disp(y,"psnr of original and mid filtered Image");

//alpha-trimmed filter
d =input("Enter the d for alpha trimmed filter:")
if pmodulo(d,2)==0
    d_start=d/2
    d_end=d/2
else
    d_start = ceil(d/2)
    d_end = floor(d/2)
end
disp(d_start,d_end)
for x = 2:M-1
    for y= 2:N-1
       temp= [I(x-1,y-1),I(x-1,y),I(x-1,y+1), I(x,y-1),I(x,y),I(x,y+1), I(x+1,y-1),I(x+1,y),I(x+1,y+1)]
       //sorting in ascending order
       temp_sort=mtlb_sort(temp)
       //length(temp_sort) is window length taken into consideration
       I_alpha(x,y) = round(sum([temp_sort(d_start+1:(length(temp_sort)-d_end))])/(length(temp_sort)-d))
    end
end   
figure,imshow(uint8(I_alpha));title("Alpha trimmed filter")

y=psnr(I_orig,I_alpha);
disp(y,"psnr of original and alphatrimmed filtered Image");
