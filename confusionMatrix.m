function [TP FP TN FN] = confusionMatrix (prediction,actualLabels)
	
	TP = sum((prediction==1).*(actualLabels==1));
	FP = sum((prediction==1).*(actualLabels==-1));
	TN = sum((prediction==-1).*(actualLabels==-1));
	FN = sum((prediction==-1).*(actualLabels==1));
	
end
