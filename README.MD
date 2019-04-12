# Sparrow SAT Solver
Code Authors: Adrian Balint
Algo Authors: Adrian Balint & Andreas Fröhlich

Citation: Adrian Balint & Andreas Fröhlich: Improving Stochastic Local Search for SAT with a New Probability Distribution, SAT 2010
Ulm University - Institute of Theoretical Computer Science

## Build the solver
```
make
```

## Using the solver

Usage of sparrow:
```
./sparrow [options] <DIMACS CNF instance> [<seed>]
```

Sparrow options:
--c1 <double_value> : c1 constant from the Sparrow heuristic (default: 3sat:2.15; 5sat:2.855; 7sat:6.5)  
--c2 <int_value> : c2 constant from the Sparrow heuristic (default: 3sat,5sat,7sat:4)  
--c3 <int_value> : c3 constant from the Sparrow heuristic (default: 3sat,7sat:10⁵; 5sat:0.75*10⁵)  
--sp <double_value> : smoothing probability inherited from gNovelty+ heuristic (default: 3sat:0.347; 5sat:1.0; 7sat:0.83)(values between [0..1.0] only the first 3 digits after dot will be taken into account)  

Further options:  
--maxflips <int_value> : maximum number of flips (default: LLONG_MAX)  
--runs <int_value> : number of tries to solve the problem (default: LLONG_MAX)  
--luby : use luby interval restarts (default: off)  
--luby_base <int_value> : number of flips per base unit (default: 2^18)  
--sps <float_value> : of sp values for sequence (default: 0.,.1,.6,1.,.9,.6,.8,.7,1.)  
--randomc  : random clause selection (default: on)  
-a or --printsolution : print solution (default: off)  
-h or --help : print usage   

