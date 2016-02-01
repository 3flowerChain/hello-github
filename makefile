helloworld : helloworld.o test.o
	g++ -o helloworld helloworld.o test.o

helloworld.o : helloworld.cpp src/test.hpp
	g++ -c helloworld.cpp

test.o : src/test.cpp src/test.hpp
	g++ -c src/test.cpp

clean :
	-rm helloworld.o test.o 
