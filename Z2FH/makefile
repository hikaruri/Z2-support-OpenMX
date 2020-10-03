# For gcc(macports) + OpenMPI + scalapack
# https://qiita.com/hikaruri/items/0fa942c9eacb8930a792
#CC = mpicc -O3 -fopenmp -I/opt/local/include -I/usr/include
#LIB = -L/opt/local/lib -lfftw3 -llapack -lblas -lgfortran -lmpi_mpifh -lscalapack

# For gcc(macports) + MPICH + intelMKL
#FFTROOT = /opt/local
#LBSROOT = /opt/intel/mkl
#CC = mpicc -fopenmp -O3 -I$(LBSROOT)/include -I$(FFTROOT)/include
#LIB= -L$(FFTROOT)/lib -lfftw3 -L$(LBSROOT)/lib -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -lpthread -lgfortran -lmkl_scalapack_lp64 -lmkl_blacs_mpich_lp64 -lmpi_mpifh

# For MateriApps LIVE!
CC = mpicc -O3 -fopenmp -I/usr/include
LIB = -L/usr/lib -llapack -lblas -lgfortran -lmpi_mpifh

OBJS_Z2FH = Z2FH.o read_scfout.o
Z2FH:	$(OBJS_Z2FH)
	$(CC) $(OBJS_Z2FH) $(LIB) -lm -o Z2FH

Z2FH.o: Z2FH.c read_scfout.h 
	$(CC) -c Z2FH.c

clean: 
	rm -f *.o Z2FH
