function plotDescription(img, number, comparison, val)
  row = 1;
  if number > 3
    row = number / 3;
  end
  subplot(2,row,number);
  imshow(img);
  hold on
  [w, h] = size(comparison);
  for i = 1:h
    boundary = bound2{comparison(i)};
    plot(boundary(:,2), boundary(:,1), 'b', 'LineWidth', val);
  end
end
