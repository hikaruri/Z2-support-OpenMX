#For Mac (macports)
#CC = mpicc -O3 -fopenmp -I/opt/local/include -I/usr/include
#LIB = -L/opt/local/lib -lfftw3 -llapack -lblas -lgfortran -lmpi_mpifh -lscalapack

#For MateriApps LIVE!
CC = mpicc -O3 -fopenmp -I/usr/include
LIB = -L/usr/lib -llapack -lblas -lgfortran -lmpi_mpifh


OBJS_Z2FH = Z2FH.o read_scfout.o
Z2FH:	$(OBJS_Z2FH)
	$(CC) $(OBJS_Z2FH) $(LIB) -lm -o Z2FH

Z2FH.o: Z2FH.c read_scfout.h 
	$(CC) -c Z2FH.c
