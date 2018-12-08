function alphas = SVMObjFunction(alphas,X,target)
	
    temp1 = alphas.'*alphas;

    X = X.'*X;
    
    target = target.'*target;
    
    temp = temp1*X*target;
    
	temp = temp*(-1/2);
    
    temp = sum(temp);
    
    temp = sum(temp);
    
    alphas = temp + sum(alphas);
    
end