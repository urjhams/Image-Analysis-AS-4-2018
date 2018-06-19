function ass4TaskB()
  %-------- a to d
  [Df1, bound1] = fourierDescriptor('trainingB.png', 24);
  [Df2, bound2] = fourierDescriptor('test2B.jpg', 24);
  [Df3, bound3] = fourierDescriptor('test1B.jpg', 24);

  %-------- e
  [compare1] = comparison(Df1, Df2, 0.6);
  [compare2] = comparison(Df2, Df3, 0.6);

  %-------- f
  plotDescription('test2B.jpg', 1, compare1, 2);
  plotDescription('test1B.jpg', 2, compare1, 5);
end
