CC = mpicc -O3 -fopenmp -I/opt/local/include -I/usr/include
FC = mpif90 -O3 -fopenmp -I/opt/local/include -I/usr/include
LIB = -L/opt/local/lib -lfftw3 -llapack -lblas -lgfortran -lmpi_mpifh -lscalapack

OBJS_Z2FH = Z2FH.o read_scfout.o
Z2FH:	$(OBJS_Z2FH)
	$(CC) $(OBJS_Z2FH) $(LIB) -lm -o Z2FH

Z2FH.o: Z2FH.c read_scfout.h 
	$(CC) -c Z2FH.c
