# THE NAME OF YOUR EXECUTABLE
TARGET = regex_conversions
# ALL CPP IMPLEMENTATION FILES THAT MAKE UP THE PROJECT
SRC_FILES = src/main.cpp src/automata.cpp src/conversions.cpp src/regex/RETranslator.cpp src/regex/Scanner.cpp src/regex/CFG.cpp src/regex/NFA.cpp src/regex/DFA.cpp src/regex/utilities.cpp

# NO EDITS NEEDED BELOW THIS LINE

CXX = g++
CFLAGS = -Wall -g -std=c++17

OBJECTS = $(SRC_FILES:.cpp=.o)

ifeq ($(shell echo "Windows"), "Windows")
    TARGET := $(TARGET).exe
    DEL = del
else
    DEL = rm
endif

all: $(TARGET)

debug: CFLAGS += -DDEBUG
debug: clean $(TARGET)

release: CFLAGS += -O3
release: clean $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) -o $@ $^

.cpp.o:
	$(CXX) $(CFLAGS) -o $@ -c $<

clean:
	$(DEL) $(TARGET) $(OBJECTS)

# DEPENDENCIES
main.o: main.cpp automata.h
automata.o: automata.cpp
conversions.o: conversions.cpp automata.h RETranslator.h Scanner.h CFG.h utilities.h
RETranslator.o: RETranslator.cpp RETranslator.h CFG.h NFA.h
Scanner.o: Scanner.cpp Scanner.h utilities.h
CFG.o: CFG.cpp CFG.h utilities.h
NFA.o: NFA.cpp NFA.h utilities.h
DFA.o: DFA.cpp DFA.h
utilities.o: utilities.cpp utilities.h