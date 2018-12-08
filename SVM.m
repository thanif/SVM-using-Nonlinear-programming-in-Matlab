% reading data file

X = load('SVMData.txt');

targets = X(:,3);

X = X(:,1:2);

% initial alpha values

[r,c] = size(X);

alphas = optimizeAlphas(X,targets);

[weights w0] = FindWeights(alphas,X,targets);

[predictions predictedLabels] = predictLabels(X,weights,w0);

plotSVMData(X,targets,weights,w0);

[TP, FP, TN, FN] = confusionMatrix (predictedLabels,targets.')

BAC = (TP/sum(targets==1)+TN/sum(targets==-1))/2

weights

w0