# if you want to dive into makefiles have a look at:
#	https://makefiletutorial.com/
#	http://www.gnu.org/software/make/manual/make.html

CXX=g++
CPPFLAGS=--std=c++17

DEPS=recursion.hpp lib/catch.hpp
OBJ=main.o recursion.o tests.o

all: clean test

%.o: %.cpp $(DEPS)
	$(CXX) -c -o $@ $< $(CPPFLAGS)

exercise2: $(OBJ)
	$(CXX) -o $@ $^ $(CPPFLAGS)

test: exercise2
	# executes all tests
	./exercise2

clean:
	rm -f exercise2
