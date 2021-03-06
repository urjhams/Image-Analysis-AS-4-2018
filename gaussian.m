function [k, km] = gaussian(noise, sigma)
  sz = 9;  [x,y] = meshgrid(-sz:sz,-sz:sz);  
  Exp_comp = -(x.^2+y.^2)/(2*sigma*sigma);
  k = exp(Exp_comp)/(2*pi*sigma*sigma);  
  km = zeros(size(noise));
  doublesz = sz * 2;  
  for kx = 1 : doublesz
    for ky = 1 : doublesz
      km(kx,ky) = k(kx,ky);
    end
  end
end
