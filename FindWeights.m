
function [weights w0] = FindWeights(alphas,X,target)

            alphas(alphas <= -0.9411) = 0;

			weights = alphas*(X.'*target).';
            
            weights = sum(weights);
			
			w0 = weights*(target.'*X).';
            
            temp = 1-target;
            
            temp = sum(temp);
            
            w0 = w0/temp;
            
            [a b] = size(X);
            
            w0 = w0/a;

end	
