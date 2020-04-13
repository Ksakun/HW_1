all: hw1_main

hw1_main: hw1_main.o hw1_error.o hw1_manager.o hw1_calculator.o
	gcc -o hw1_main hw1_main.o hw1_error.o hw1_manager.o hw1_calculator.o

hw1_main.o: hw1_main.c
	gcc -c -o hw1_main.o hw1_main.c

hw1_error.o: hw1_error.c hw1_error.h
	gcc -c -o hw1_error.o hw1_error.c

hw1_manager.o: hw1_manager.c hw1_manager.h
	gcc -c -o hw1_manager.o hw1_manager.c

hw1_calculator.o: hw1_calculator.c hw1_calculator.h
	gcc -c -o hw1_calculator.o hw1_calculator.c

clean:
	rm -rf hw1_main.o hw1_error.o hw1_manager.o hw1_calculator.o
	rm -rf hw1_main
