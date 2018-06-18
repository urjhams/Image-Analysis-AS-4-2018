function [Dfs, boundaries] = fourierDescriptor(Image, n)
  % -------------- a
  I = mat2gray(Image);

  % -------------- b
  level = graythresh(I);
  BW = im2bw(I,level);

  % -------------- c
  extractB = bwboundaries(I);
  Dfs = {};
  boundaries = {};
  for k = 1:length(extractB)
    boundary = extractB(I);
    F = boundary(:,2) + j * boundary(:,1);
    Df = fft(D);
    [w, h] = size(Df);
    if w > n
      Df = Df(2:(n + 1));
      Df(1) = 0;
      Df = Df/abs(Df(2));
      Df = abs(Df);
      Dfs{end + 1} = Df;
      boundaries{end + 1} = boundary;
    end
  end
end
