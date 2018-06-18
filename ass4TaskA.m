function ass4TaskA()
  pkg load image;
  %------------ a convert to grayscale
  original = imread("taskA.png");
  double = (uint8(mean(original, 3)));  gray = mat2gray(double);
   %------------ b add noise
   m = 0;
   v = 0.01;
   noise = imnoise(gray,'gaussian',m,v);
   %------------ c filter noise
   fftImage = fft2(noise);
   sigma = 1.5;
   [k, km] = gaussian(noise, sigma);
   fftFilter = fft2(km);
   convImage = fftImage.*fftFilter;
   filteredImage = ifft2(convImage);
   %------------ d plot results
   figure,  subplot(2,2,1), imshow(noise), title("Noisy Image");
   subplot(2,2,2), imagesc(log(abs(fftshift(fft2(gray))))), title("Logarithmic scaled centered spectrum");
   subplot(2,2,3), imshow(k, []), title("Gaussian Filter");
   subplot(2,2,4), imshow(abs(filteredImage)), title("Filtered Image");
   figure,  imshow(original), title("Original Image");end
end
