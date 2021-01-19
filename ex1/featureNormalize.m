function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for i = 1:size(X,2)
    mu(1, i) = mean(X(:, i));
    sigma(1, i) = std(X(:, i));
    for j = 1:size(X, 1)
        X_norm(j, i) = (X(j, i) - mu(1, i))/sigma(1,i);
    end
end

end
