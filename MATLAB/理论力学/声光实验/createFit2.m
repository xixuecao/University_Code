function [fitresult, gof] = createFit2(p, I1)
%CREATEFIT(P,I1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : p
%      Y Output: I1
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 04-Jun-2016 10:07:33


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( p, I1 );

% Set up fittype and options.
ft = fittype( 'poly2' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
h = plot( fitresult, xData, yData );
% Label axes
grid on


