# stokesConstantL3
Computation of the Stokes constant for the invariant manifolds of the Lagrange point L3.

documentation.pdf: Summary of the problem and the methods employed. 
main.m: matlab code for the computation of the Stokes constant
  initialCondition.m: function computing the initial condition necessary for the integrator, using the asymptotic expansions given in documentation.
  eqInnner.m: function for the inner equation.
    f1.m: auxiliary function of the inner equation.
    f2.m: auxiliary function of the inner equation.
    f3.m: auxiliary function of the inner equation.
    g.m: auxiliary function of the inner equation.
       
