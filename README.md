# xp

xp is a fortran program that computes
vector cross products

## To Do

### Functionality
-   [x] Take 6 args and spit back the cross product of two 3 vectors
-   [x] Take 4 args and spit back cross product (assuming z1 = z2 = 0)
-   [ ] Break down creation of cross product and taking of command line 
    args into their own functions. 
-   [x] Each vector represented as a 3 component array of doubles
-   [ ] Create a vector type for data and method
-   [ ] Create an interactive mode
### Documentation, compilation, etc.
-   [ ] make a usage string
-   [ ] make useful error codes on exit
-   [x] Create makefile for basic compilation
-   [ ] Get unit testing on-line and test functions
-   [ ] Test program as a whole
-   [ ] Integrate testing into makefile
-   [ ] Edit make file to install the program, as well as uninstall
-   [ ] Create and register a man page on installation, and delete man
        page on uninstallation


## Compilation
    gfortran -o xp main.f90




