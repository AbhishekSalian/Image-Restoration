function y=psnr(I_a,I_b)
    [m,n]=size(I_a);
    I_a=double(I_a);I_b=double(I_b);
    mse=0;
    for i=1:m
        for j =1:n
            mse = mse+(I_a(i,j)-I_b(i,j))**2
            end
    end
    mse=mse/(m*n)
    max_pix=max(I_a)
    output=10*log10(max_pix**2/mse);
    y=output;
endfunction
