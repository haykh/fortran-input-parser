SRC := global.F90 read_input.F90 main.F90
FC := gfortran

main : $(subst .F90,.o,$(SRC))
	$(FC) $(FFLAGS) -o $@ $^

%.o : %.F90
	$(FC) $(FFLAGS) -o $@ -c $<

clean :
	rm -f *.o *.mod main
