FC = gfortran
FFlags = -Wall

OBJS = bin/xplib.o bin/main.o
EXE = bin/a.out

SRCDIR = src
BINDIR = bin

all: $(EXE)

$(EXE): $(OBJS)
	$(FC) $(FFlags) -o $@ $^

bin/xplib.o: $(SRCDIR)/xplib.f90
	$(FC) $(FFlags) -c $< -o $@ 

bin/main.o: $(SRCDIR)/main.f90
	$(FC) $(FFlags) -c $< -o $@

clean:
	rm -f $(OBJS) xplib.mod

distclean: clean
	rm -f $(EXE)
