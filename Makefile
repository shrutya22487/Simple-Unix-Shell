all:
	gcc ./test_files/fib.c -o fib
	gcc ./test_files/helloworld.c -o helloworld
	gcc simple-shell.c -o simple-shell

clean:
	-@rm -f *.o helloworld fib simple-shell