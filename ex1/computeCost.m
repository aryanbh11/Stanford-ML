function J = computeCost(X, y, theta)

m = length(y); % number of training examples
h = X * theta;
J = 0;

for i = 1:m
    J = J + (h(i) - y(i))^2;
end
J = J/(2*m);
end
