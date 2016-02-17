object = helloworld.o test.o
helloworld : $(object)
	g++ -o helloworld $(object)

helloworld.o : src/test.hpp

test.o : src/test.cpp src/test.hpp
	g++ -c src/test.cpp

.PHONY : clean
clean :
	-rm helloworld $(object)
