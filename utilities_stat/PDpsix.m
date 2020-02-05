function psix=PDpsix(u,alpha)
%PDpsix computes psi function (derivative of rho function) times x for minimum density power divergence estimator
% 
%
%<a href="matlab: docsearchFS('PDpsix')">Link to the help function</a>
%
%
%  Required input arguments:
%
%    u:         scaled residuals or Mahalanobis distances. Vector. n x 1
%               vector containing residuals or Mahalanobis distances
%               for the n units of the sample
%    alpha :    tuning parameter. Scalar. Scalar in the interval (0,1] which
%               controls the robustness/efficiency of the estimator
%               (beta in regression or mu in the location case ...). The
%               greater is alpha the greater is the bdp and smaller is the
%               efficiency.
%
%  Optional input arguments:
%
%  Output:
%
%
%   psix :     n x 1 vector which contains the values of PD psi(u)*u
%                function associated to the residuals or Mahalanobis
%                distances for the n units of the sample.
%
%
% More About:
%
%
% Function PDpsix transforms vector u as follows 
% 
% \[
% PDpsix(u,alpha)=  \alpha u^2 \exp(-\alpha (u^2/2));
%      \]

%
% See also: TBsix, HApsix, HYPpsix, OPTpsix
%
% References:
%
% Maronna, R.A., Martin D. and Yohai V.J. (2006), "Robust Statistics, Theory
% and Methods", Wiley, New York.
%
%
% Copyright 2008-2019.
% Written by FSDA team
%
%
%<a href="matlab: docsearchFS('PDpsix')">Link to the help page for this function</a>
%
%$LastChangedDate::                      $: Date of the last commit

% Examples:

%{
    % Plot of psi function (derivative of rho function) times x for minimum density power divergence estimator. 
    x=-6:0.01:6;
    psixPD=PDpsix(x,1);
    plot(x,psixPD)
    xlabel('x','Interpreter','Latex')
    ylabel('$\psi_\alpha (x)$','Interpreter','Latex')

%}

%% Beginning of code
psix = alpha * u.^2 .*exp(- alpha *(u.^2/2));

end
%FScategory:UTISTAT