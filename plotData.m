function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% Find Indices of Positive and Negative examples

pos = find(y==1); % both pos and neg are nD vector
neg = find(y==0);


% plotting the examples

% now X(pos,1) is x-value and X(pos,2) is the y-value of exam1 and exam2 value respectively
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'Markersize',7) 

% similar for X(neg,1) is x-value and X(neg,2) is the y-value of exam1 and exam2 value respectively
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7)



% =========================================================================



hold off;

end
