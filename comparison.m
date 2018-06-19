function [rs] = comparison(DfTrain, DfTest, value)
  rs = [];
  [w1, h1] = size(DfTrain);
  [w2, h2] = size(DfTest);
  for i = 1:h1
    for j = 1:h2
      if norm(DfTrain{i} - DfTest{j}) < t
        rs = [rs, j];
      end
    end
  end
end
