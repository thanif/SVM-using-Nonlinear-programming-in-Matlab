# SVM-using-Nonlinear-programming-in-Matlab

# function alphas = SVMObjFunction(alpha,X,target)

Implements the objective function, i.e., the function that computes SVM’s Lagrange dual function

# function alphas = optimizeAlphas(X,target)

A function to optimize the alphas
This function calls fmincon, fmincon requires a function handler to the function SVMObjFunction that computes the SVM’s objective function (the Lagrange dual). As Matlab expects only one parameter for SVMObjFunction. However, as we have three parameters specify it as:

# objfunc = @(alpha)SVMObjFunction(alpha,X,target)

%dummy function that only calls the SVMObjFunction with three parameters.

%Next put objfunc as parameter to fmincon

# fmincon(objfunc,alpha0,…)

Find the weights and w0:

# function [weights w0] = FindWeights(alphas,X,target)

w0 is averaged from all support vectors. 

Predict labels for SVM

# function [predictions predictedLabels] = predictLabels(X,weights,w0)

Evaluate the model

Map the predictions to labels and compute BAC and confusion matrix

The main SVM script brings it all together

a. Read the training data.
b. Find alphas.
c. Find the weight vector and w0 from alphas.  
d. Find the predictions using the weights and w0 and determine a way to map these predictions to predicted labels.  So for example if your prediction is 10, then how will you map it to a label?
e. Plot the data along with the hyperplane using the given function plotSVMData.
f. Determine the confusion matrix and BAC for your model.
