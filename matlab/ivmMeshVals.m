function [X, Y, Z] = ivmMeshVals(model, limx, limy, number)

% IVMMESHVALS Give the output of the IVM for contour plot display.

% IVM

x = linspace(limx(1), limx(2), number);
y = linspace(limy(1), limy(2), number);
[X, Y] = meshgrid(x);

Z = ivmPosteriorMeanVar(model, [X(:) Y(:)]);
Z = reshape(Z, size(X));