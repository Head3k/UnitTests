all:main

main:build/src/main.o build/src/func.o
	gcc build/src/main.o build/src/func.o -o bin/main
build/src/func.o:src/func.c
	gcc -c src/func.c -o build/src/func.o
build/src/main.o:src/main.c
	gcc -c src/main.c -o build/src/main.o	
	
test_func:build/test/func_test.o build/test/main.o build/src/func.o 
	gcc -I thirdparty -Wall -Werror build/test/func_test.o build/test/main.o build/src/func.o -o bin/test_func	
build/test/func_test.o:test/func_test.c
	gcc -I src -I thirdparty -Wall -Werror -c test/func_test.c -o build/test/func_test.o
build/test/main.o:test/main.c
	gcc -I thirdparty -c test/main.c -o build/test/main.o


test:bin/test_func
	bin/test_func
	
run:
	bin/./main


clean:
	rm -rf build/test/*.o
	rm -rf build/src/*.o 
	rm -rf bin/*
	
checkdir:
	mkdir -p bin build build/test build/src
