function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
h = X * theta;

for iter = 1:num_iters
    for t = 1:length(theta)
        temp = 0;
        for i = 1:m
            x = X(i,t);
            temp = temp + (h(i) - y(i))*x;
        end
        theta(t, 1) = theta(t, 1) - (alpha/m)*(temp);
    end
    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);
    h = X * theta;
end

end
