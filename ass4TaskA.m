function ass4TaskA()  pkg load image;    %a convert to grayscale  original = imread("taskA.png");  gray = double(original) / 255;    subplot(1,3,1), imshow(original), title("Original");  subplot(1,3,2), imshow(gray), title("Grayscale");    %b add noise  m = 0;  v = 0.01;  noise = imnoise(gray,'gaussian',m,v);    subplot(1,3,3), imshow(noise), title("Noise");    %c filter noise    %d plot results  end