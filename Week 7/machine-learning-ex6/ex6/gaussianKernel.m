function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%
a = size(x1, 1);
diff = 0;
sum = 0;
for i = 1:a
  diff = x1(i, 1) - x2(i, 1);
  diff = diff ^ 2;
  sum = sum + diff;
end;  

sim = exp(((-1) / (2 * sigma * sigma)) * sum);



% =============================================================
    
end
