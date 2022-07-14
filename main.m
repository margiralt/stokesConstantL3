%%% STOKES CONSTANT COMPUTATION %%%
clear all; clc; close all;

rho=13; % Imaginary part initial point

% Settings
initialU = 1000; % Real part initial point
initialFactors = 4; % Number of factors expansion
TOL = 1e-12; % Tolerance integrator
options = odeset('RelTol',TOL,'AbsTol',TOL);

% Initial Conditions
Z0u = initialCondition(-initialU,rho,initialFactors); %Unstable solution
Z0s = initialCondition( initialU,rho,initialFactors); %Stable solution

% Integration manifolds
[Uu,Zu]=ode45(@(U,Z) eqInner(U,Z,rho),[-initialU,0],Z0u,options);
[Us,Zs]=ode45(@(U,Z) eqInner(U,Z,rho),[ initialU,0],Z0s,options);

% Difference
Nu = size(Zu,1);
Ns = size(Zu,1);
WDiff = abs(Zu(Nu,1)-Zs(Ns,1)); % Difference component W
XDiff = abs(Zu(Nu,2)-Zs(Ns,2)); % Difference component X
YDiff = abs(Zu(Nu,3)-Zs(Ns,3)); % Difference component Y

% Stokes Constant
Theta = exp(rho)*YDiff; 



