function [predictions predictedLabels] = predictLabels(X,weights,w0)

    predictions = w0 + (weights*X.');
    
    predictions = predictions/max(predictions);
    
    predictedLabels(predictions < 0) = -1;
    
    predictedLabels(predictions >= 0) = 1;
    
end