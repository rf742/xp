a.out: xplib.o main.f90
	gfortran main.f90 xplib.o
.PHONY: clean
clean:
	rm *.o *.mod


xplib.o: xplib.f90
	gfortran -c xplib.f90
