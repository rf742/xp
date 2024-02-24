FC = gfortran
FFlags = -Wall

OBJS = bin/xplib.o bin/main.o
ARTIFACTS = bin/xplib.mod
EXE = bin/a.out

SRCDIR = src
BINDIR = bin

all: $(EXE)

$(EXE): $(OBJS)
	$(FC) $(FFlags) -o $@ $^

bin/xplib.o: $(SRCDIR)/xplib.f90
	$(FC) $(FFlags) -c $< -o $@ -J $(BINDIR) 

bin/main.o: $(SRCDIR)/main.f90
	$(FC) $(FFlags) -c $< -o $@ -I $(BINDIR)

clean:
	rm -f $(OBJS) $(ARTIFACTS)

distclean: clean
	rm -f $(EXE)

.PHONY: doc
doc:
	ford -d . -o doc my_project.md
