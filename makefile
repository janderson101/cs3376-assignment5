FILE1 = TwoPipesTwoChildren 
FILE2 = TwoPipesThreeChildren
FILE3 = DynPipe
FILES = $(FILE1) $(FILE2) $(FILE3)
CCC = g++ -c
CCO = g++ -o
NEED = TwoPipesTwoChildren.o TwoPipesThreeChildren.o DynPipe.o

all	: $(NEED)
	$(CCO) $(FILE1) TwoPipesTwoChildren.o
	$(CCO) $(FILE2) TwoPipesThreeChildren.o
	$(CCO) $(FILE3) DynPipe.o

TwoPipesTwoChildren.o	:TwoPipesTwoChildren.cpp
	$(CCC) TwoPipesTwoChildren.cpp

TwoPipesThreeChildren.o	:TwoPipesThreeChildren.cpp
	$(CCC) TwoPipesThreeChildren.cpp

DynPipe.o	:DynPipe.cpp
	$(CCC) DynPipe.cpp

clean	:
	rm -f core $(FILES) $(NEED)



