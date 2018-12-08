function alphas = optimizeAlphas(X,target)
    
	[r,c] = size(X);
	
	alphas = rand(r,1);

	objfunc = @(alpha)SVMObjFunction(alphas,X,target); 
	
    upper = ones(r,1)*0.05;
    
    alphas = fmincon(objfunc,alphas,[],[],[],[],[],upper);


end	